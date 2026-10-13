#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>

#define REGISTERS_COUNT 16
#define MAX_INSTRUCTIONS 4096 // Maximum 12-bit address space (0x000 - 0xFFF)

static int parse_register(const char* str, uint16_t* reg)
{
    if (!str || str[0] != 'R' || !isdigit((unsigned char)str[1]))
        return 0;

    char* end;
    errno = 0;
    long value = strtol(str + 1, &end, 10);

    if (errno || *end != '\0' || value < 0 || value >= REGISTERS_COUNT)
        return 0;

    *reg = (uint16_t)value;
    return 1;
}

static int parse_immediate(const char* str, uint16_t* value)
{
    if (!str || str[0] != '#')
        return 0;

    str++;

    if (!*str)
        return 0;

    char* end;
    errno = 0;
    long parsed = strtol(str, &end, 0);

    if (errno || *end != '\0' || parsed < 0 || parsed > 65535)
        return 0;

    *value = (uint16_t)parsed;
    return 1;
}

uint8_t load_assembly(const char* path, uint16_t* memory, size_t max_words, size_t* out_word_count)
{
    FILE* file = fopen(path, "r");

    if (!file) {
        perror("Failed to open assembly file");
        return 0;
    }

    char line[256];
    size_t pc = 0;
    size_t line_number = 0;
    uint8_t success = 1;

    while (fgets(line, sizeof(line), file)) {
        line_number++;

        // Reject lines that exceed the buffer.
        if (!strchr(line, '\n') && !feof(file)) {
            int ch;
            while ((ch = fgetc(file)) != '\n' && ch != EOF) {}
            fprintf(stderr, "Line %zu: line too long\n", line_number);
            success = 0;
            break;
        }

        // Remove comments.
        char* comment = strchr(line, ';');
        if (comment)
            *comment = '\0';

        // Skip leading whitespace.
        char* p = line;
        while (isspace((unsigned char)*p))
            p++;

        if (*p == '\0')
            continue;

        // Tokenize operands.
        char* opcode = strtok(p, " \t,\r\n");
        char* operands[3] = {NULL, NULL, NULL};
        size_t operand_count = 0;

        while (operand_count < 3 &&
               (operands[operand_count] = strtok(NULL, " \t,\r\n"))) {
            operand_count++;
        }

        // Reject extra operands.
        if (strtok(NULL, " \t,\r\n")) {
            fprintf(stderr, "Line %zu: too many operands\n", line_number);
            success = 0;
            break;
        }

        uint16_t instruction = 0;
        uint16_t rd, r1, r2, imm;
        int valid = 1;

        if (strcmp(opcode, "NOP") == 0) {
            valid = operand_count == 0;
            instruction = 0x0000;
        }
        else if (strcmp(opcode, "ADD") == 0 ||
                 strcmp(opcode, "SUB") == 0 ||
                 strcmp(opcode, "AND") == 0 ||
                 strcmp(opcode, "OR")  == 0 ||
                 strcmp(opcode, "XOR") == 0 ||
                 strcmp(opcode, "LSL") == 0 ||
                 strcmp(opcode, "LSR") == 0) {

            valid = operand_count == 3 &&
                    parse_register(operands[0], &rd) &&
                    parse_register(operands[1], &r1) &&
                    parse_register(operands[2], &r2);

            if (valid) {
                uint16_t opcode_value;

                if      (strcmp(opcode, "ADD") == 0) opcode_value = 0x1;
                else if (strcmp(opcode, "SUB") == 0) opcode_value = 0x2;
                else if (strcmp(opcode, "AND") == 0) opcode_value = 0x3;
                else if (strcmp(opcode, "OR")  == 0) opcode_value = 0x4;
                else if (strcmp(opcode, "XOR") == 0) opcode_value = 0x5;
                else if (strcmp(opcode, "LSL") == 0) opcode_value = 0x6;
                else                                  opcode_value = 0x7;

                instruction = (opcode_value << 12) |
                              (rd << 8) |
                              (r1 << 4) |
                              r2;
            }
        }
        else if (strcmp(opcode, "LOAD") == 0 ||
                 strcmp(opcode, "STORE") == 0 ||
                 strcmp(opcode, "CMP") == 0) {

            valid = operand_count == 2 &&
                    parse_register(operands[0], &rd) &&
                    parse_register(operands[1], &r1);

            if (valid) {
                uint16_t opcode_value =
                    strcmp(opcode, "LOAD") == 0  ? 0x8 :
                    strcmp(opcode, "STORE") == 0 ? 0x9 : 0xB;

                instruction = (opcode_value << 12) |
                              (rd << 8) |
                              (r1 << 4);
            }
        }
        else if (strcmp(opcode, "LOADI") == 0) {
            valid = operand_count == 2 &&
                    parse_register(operands[0], &rd) &&
                    parse_immediate(operands[1], &imm) &&
                    imm <= 0xFF;

            if (valid)
                instruction = (0xA << 12) | (rd << 8) | imm;
        }
        else if (strcmp(opcode, "JMP") == 0 ||
                 strcmp(opcode, "JEQ") == 0 ||
                 strcmp(opcode, "JNE") == 0) {

            valid = operand_count == 1 &&
                    parse_immediate(operands[0], &imm);

            if (valid) {
                uint16_t opcode_value =
                    strcmp(opcode, "JMP") == 0 ? 0xC :
                    strcmp(opcode, "JEQ") == 0 ? 0xD : 0xE;

                instruction = (opcode_value << 12) | (imm & 0x0FFF);
            }
        }
        else if (strcmp(opcode, "HALT") == 0) {
            valid = operand_count == 0;
            instruction = 0xF000;
        }
        else {
            fprintf(stderr, "Line %zu: unknown opcode '%s'\n",
                    line_number, opcode);
            success = 0;
            break;
        }

        if (!valid) {
            fprintf(stderr, "Line %zu: invalid operands for %s\n",
                    line_number, opcode);
            success = 0;
            break;
        }

        if (pc >= max_words) {
            fprintf(stderr, "Line %zu: instruction memory is full\n",
                    line_number);
            success = 0;
            break;
        }

        memory[pc++] = instruction;
    }

    if (ferror(file)) {
        perror("Error reading assembly file");
        success = 0;
    }

    fclose(file);

    if (success) {
        printf("Successfully assembled %zu instructions.\n", pc);
        if (out_word_count) {
            *out_word_count = pc;
        }
    }

    return success;
}

static void format_output_path(const char* raw_output, char* buffer, size_t buffer_size)
{
    size_t len = strlen(raw_output);
    if (len >= 4 && strcmp(raw_output + len - 4, ".bin") == 0) {
        snprintf(buffer, buffer_size, "%s", raw_output);
    } else {
        snprintf(buffer, buffer_size, "%s.bin", raw_output);
    }
}

static uint8_t save_binary(const char* path, const uint16_t* memory, size_t word_count)
{
    FILE* file = fopen(path, "wb");
    if (!file) {
        perror("Failed to open output file for writing");
        return 0;
    }

    // Writes instructions in host byte order (Little-Endian on x86/ARM)
    size_t written = fwrite(memory, sizeof(uint16_t), word_count, file);
    if (written != word_count) {
        perror("Failed to write complete binary output");
        fclose(file);
        return 0;
    }

    fclose(file);
    printf("Saved binary to '%s' (%zu bytes).\n", path, word_count * sizeof(uint16_t));
    return 1;
}

int main(int argc, char* argv[])
{
    const char* input_path = NULL;
    const char* raw_output_path = "out.bin"; // Default if -o is omitted

    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "-o") == 0) {
            if (i + 1 < argc) {
                raw_output_path = argv[++i];
            } else {
                fprintf(stderr, "Error: Missing output filename after '-o'\n");
                return EXIT_FAILURE;
            }
        } else if (argv[i][0] == '-') {
            fprintf(stderr, "Error: Unknown option '%s'\n", argv[i]);
            return EXIT_FAILURE;
        } else {
            if (input_path == NULL) {
                input_path = argv[i];
            } else {
                fprintf(stderr, "Error: Multiple input files specified\n");
                return EXIT_FAILURE;
            }
        }
    }

    if (!input_path) {
        fprintf(stderr, "Usage: %s <input.asm> [-o <output_name>]\n", argv[0]);
        return EXIT_FAILURE;
    }

    uint16_t memory[MAX_INSTRUCTIONS] = {0};
    size_t assembled_words = 0;

    if (!load_assembly(input_path, memory, MAX_INSTRUCTIONS, &assembled_words)) {
        return EXIT_FAILURE;
    }

    char final_output_path[512];
    format_output_path(raw_output_path, final_output_path, sizeof(final_output_path));

    if (!save_binary(final_output_path, memory, assembled_words)) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}