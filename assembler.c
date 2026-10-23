#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>

#define REGISTERS_COUNT 16
#define MAX_INSTRUCTIONS 4096 // Maximum 12-bit address space (0x000 - 0xFFF)
#define MAX_LABELS 256
#define MAX_VARIABLES 256
#define MAX_DATA_WORDS 32768 // 0x0000 - 0x7FFF

typedef enum {
    VAR_INT16,
    VAR_STR
} Var_Type;

typedef struct {
    char name[32];
    Var_Type type;
    uint16_t address;
} Variable;

Variable variables[MAX_VARIABLES];
int var_count = 0;

uint16_t data_buffer[MAX_DATA_WORDS];
uint16_t data_pc = 0;

int get_variable_address(const char* search_name, uint16_t* out_address) {
    for (int i = 0; i < var_count; i++) {
        if (strcmp(variables[i].name, search_name) == 0) {
            *out_address = variables[i].address;
            return 1;
        }
    }
    return 0;
}

typedef struct
{
    char name[32];
    uint16_t address;
} Label;

Label labels[MAX_LABELS];
int label_count = 0;

int get_label_address(const char* search_name, uint16_t* out_address) {
    for (int i = 0; i < label_count; i++) {
        if (strcmp(labels[i].name, search_name) == 0) {
            *out_address = labels[i].address;
            return 1;
        }
    }
    return 0;
}

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

    if (!file) 
    {
        perror("Failed to open assembly file");
        return 0;
    }

    char line[256];
    uint16_t current_pc = 0;

    while (fgets(line, sizeof(line), file))
    {
        char* comment = strchr(line, ';');
        if (comment) *comment = '\0';

        char* token = strtok(line, " \t,\r\n");
        if (!token) continue;

        if (strcmp(token, "_code:") == 0) continue;

        if (strcmp(token, "_variables:") == 0) {
            while (fgets(line, sizeof(line), file)) {
                char* comment = strchr(line, ';');
                if (comment) *comment = '\0';

                char* p = line;
                while (isspace((unsigned char)*p)) p++;
                if (*p == '\0') continue; // Skip empty lines

                // Break out of variable parsing when we hit the code section!
                if (strncmp(p, "_code:", 6) == 0) {
                    break;
                }

                char name[32];
                char type[32];
                char val[512];

                if (sscanf(p, "%31s .%31s = %511[^\r\n]", name, type, val) == 3) {
                    Variable* var = &variables[var_count++];
                    strcpy(var->name, name);
                    var->address = data_pc;

                    if (strcmp(type, "int16") == 0) {
                        var->type = VAR_INT16;

                        char* num_str = (val[0] == '#') ? val + 1 : val;
                        data_buffer[data_pc++] = (uint16_t)strtol(num_str, NULL, 0);
                    } 
                    else if (strcmp(type, "str") == 0) {
                        var->type = VAR_STR;
                        
                        char* str_start = strchr(val, '"');
                        if (str_start) {
                            str_start++;
                            for (char* c = str_start; *c != '\0' && *c != '"'; c++) {
                                if (*c == '\\' && *(c + 1) == 'n') {
                                    data_buffer[data_pc++] = '\n';
                                    c++;
                                } else {
                                    data_buffer[data_pc++] = (uint16_t)(unsigned char)(*c);
                                }
                            }

                            data_buffer[data_pc++] = 0x0000;
                        }
                    }
                }
            }
            continue;
        }

        int len = strlen(token);
        if (token[len - 1] == ':') 
        {
            token[len - 1] = '\0'; 
            
            strcpy(labels[label_count].name, token);
            labels[label_count].address = current_pc;
            label_count++;
        }

        else
        {
            current_pc++;
        }
    }

    rewind(file);

    size_t pc = 0;
    size_t line_number = 0;
    uint8_t success = 1;
    int in_variables = 0;

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

        if (strncmp(p, "_variables:", 11) == 0) {
            in_variables = 1;
            continue;
        }
        if (strncmp(p, "_code:", 6) == 0) {
            in_variables = 0;
            continue;
        }
        if (in_variables) {
            continue;
        }

        // Tokenize operands.
        char* opcode = strtok(p, " \t,\r\n");
        if (opcode[strlen(opcode) - 1] == ':') {
            opcode = strtok(NULL, " \t,\r\n");
            if (!opcode) continue;
        }

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
        else if(strcmp(opcode, "PUSH")  == 0 ||
                strcmp(opcode, "POP")   == 0 ||
                strcmp(opcode, "CALL")  == 0) {
            
            valid = operand_count == 1 &&
                    parse_register(operands[0], &r1);
            
            if (valid)
            {
                uint16_t opcode_value = 0x0;

                if      (strcmp(opcode, "PUSH") == 0)       rd = 0x1;
                else if (strcmp(opcode, "POP")  == 0)       rd = 0x2;
                else if (strcmp(opcode, "CALL") == 0)       rd = 0x3;

                instruction = (opcode_value << 12) |
                              (rd           << 8)  |
                              (r1           << 4);
            }
        }
        else if (strcmp(opcode, "RET") == 0) {
            valid = operand_count == 0;
            
            if (valid) {
                instruction = (0x0 << 12) | (0x4 << 8);
            }
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
                    (parse_immediate(operands[1], &imm) ||
                     get_label_address(operands[1], &imm) ||
                     get_variable_address(operands[1], &imm)) &&
                    (imm <= 0xFF);

            if (valid)
                instruction = (0xA << 12) | (rd << 8) | (imm & 0xFF);
        }
        else if (strcmp(opcode, "JMP") == 0 ||
                 strcmp(opcode, "JEQ") == 0 ||
                 strcmp(opcode, "JNE") == 0) {

            valid = operand_count == 1;

            uint16_t target_addr;

            if (parse_immediate(operands[0], &target_addr)) {
                imm = (target_addr & 0x0FFF);
            } 
            else if (get_label_address(operands[0], &target_addr)) {
                imm = (target_addr & 0x0FFF);
            }
            else {
                valid = 0;
            }


            if (valid) {
                uint16_t opcode_value =
                    strcmp(opcode, "JMP") == 0 ? 0xC :
                    strcmp(opcode, "JEQ") == 0 ? 0xD : 0xE;

                instruction = (opcode_value << 12) | (imm);
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

    // Write the 2-word header: [instruction_count, data_count]
    uint16_t header[2] = { (uint16_t)word_count, data_pc };
    if (fwrite(header, sizeof(uint16_t), 2, file) != 2) {
        perror("Failed to write binary header");
        fclose(file);
        return 0;
    }

    // Write instructions (_code:)
    if (fwrite(memory, sizeof(uint16_t), word_count, file) != word_count) {
        perror("Failed to write instruction binary output");
        fclose(file);
        return 0;
    }

    // Write pre-loaded RAM (_variables:)
    if (data_pc > 0) {
        if (fwrite(data_buffer, sizeof(uint16_t), data_pc, file) != data_pc) {
            perror("Failed to write data binary output");
            fclose(file);
            return 0;
        }
    }

    fclose(file);
    size_t total_bytes = (2 + word_count + data_pc) * sizeof(uint16_t);
    printf("Saved binary to '%s' (%zu instructions, %u data words, %zu bytes total).\n",
           path, word_count, data_pc, total_bytes);
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