#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define REGISTERS_COUNT 16

/* Harvard architecture where the instruction and data memory are separete*/
uint16_t instruction_memory[65536]; // Instruction ram
uint16_t data_memory[65536];        // 64K of data ram
uint16_t reg[REGISTERS_COUNT];

uint8_t debug = 0;

#define PC reg[15]
#define SP reg[14]
#define LR reg[13]
#define SR reg[12]

#define FLAG_Z (1 << 0)
#define FLAG_C (1 << 1)
#define FLAG_N (1 << 2)
#define FLAG_V (1 << 3)
#define FLAG_I (1 << 4)

void update_flags_add(uint16_t a, uint16_t b, uint32_t result)
{
    uint16_t r = (uint16_t)result;

    reg[12] &= ~(FLAG_Z | FLAG_C | FLAG_N | FLAG_V);

    if (r == 0)
        reg[12] |= FLAG_Z;

    if (result > 0xFFFF)
        reg[12] |= FLAG_C;

    if (r & 0x8000)
        reg[12] |= FLAG_N;

    if (((~(a ^ b)) & (a ^ r) & 0x8000) != 0)
        reg[12] |= FLAG_V;
}

void update_flag_sub(uint16_t a, uint16_t b, uint32_t result)
{
    uint16_t r = (uint16_t)result;

    reg[12] &= ~(FLAG_Z | FLAG_C | FLAG_N | FLAG_V);

    if (r == 0)
        reg[12] |= FLAG_Z;

    if (a < b)
        reg[12] |= FLAG_C;

    if (r & 0x8000)
        reg[12] |= FLAG_N;

    if (((a ^ b) & (a ^ r) & 0x8000) != 0)
        reg[12] |= FLAG_V;
}

void update_flag_logic(uint16_t result)
{
    reg[12] &= ~(FLAG_Z | FLAG_C | FLAG_N | FLAG_V);

    if (result == 0)
        reg[12] |= FLAG_Z;

    if (result & 0x8000)
        reg[12] |= FLAG_N;
}

void decode_instruction(
    uint16_t instruction,
    uint16_t* optcode, 
    uint16_t* dest, 
    uint16_t* src1, 
    uint16_t* src2)
{
    *optcode = (instruction >> 12) & 0x000F;     // Top 4 bits
    *dest = (instruction >> 8)     & 0x000F;     // Next 4 bits
    *src1 = (instruction >> 4)     & 0x000F;     // Next 4 bits
    *src2 =  instruction           & 0x000F;     // Next 4 bits
}

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include <limits.h>

#define REGISTERS_COUNT 16

static int parse_register(const char* str, uint16_t* reg)
{
    if (!str || str[0] != 'R' || !isdigit((unsigned char)str[1]))
        return 0;

    char* end;
    errno = 0;
    long value = strtol(str + 1, &end, 10);

    if (errno || *end != '\0' || value < 0 ||
        value >= REGISTERS_COUNT)
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

uint8_t load_assembly(const char* path, uint16_t* memory, size_t max_words)
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

                // The instruction format must reserve 12 bits for
                // the target address.
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

    if (success)
        printf("Successfully assembled %zu instructions.\n", pc);

    return success;
}

uint8_t load_program(const char* path, uint16_t* memory, size_t max_words)
{
    FILE* file = fopen(path, "rb");
    if (!file)
    {
        return 0;
    }


    int byte;

    size_t words_read = fread(memory, sizeof(uint16_t), max_words, file);
    
    printf("Successfully loaded %zu instructions into memory.\n", words_read);
    
    fclose(file);
    return 1;
}

int main(int argc, const char* argv[])
{
    uint8_t running = 1;

    for (int i = 0; i < REGISTERS_COUNT; i++)
    {
        reg[i] = 0x0000;
    }

    SP = 0xFFFF;

    if (argc == 2)
    {
        load_assembly(argv[1], instruction_memory, 65536);
    }
    else if (argc == 3 && strcmp(argv[2], "--debug") == 0)
    {
        load_assembly(argv[1], instruction_memory, 65536);
        debug = 1;
    }
    else 
    {
        printf("Usage: ./main <file.asm> [--debug]\n");
        return 1;
    }

    while (running)
    {
        uint16_t instruction = instruction_memory[PC];
        PC +=1;

        uint16_t optcode, dest, src1, src2;
        decode_instruction(instruction, &optcode, &dest, &src1, &src2);

        switch (optcode)
        {
            // NOP
            case 0x0:
                break;

            // ADD
            case 0x1: {
                uint32_t res = (uint32_t) reg[src1] + (uint32_t) reg[src2];
                update_flags_add(reg[src1], reg[src2], res);
                reg[dest] = (uint16_t) res;
                break;
            }

            // SUB
            case 0x2: {
                uint32_t result = (uint32_t)reg[src1] - (uint32_t)reg[src2];
                update_flag_sub(reg[src1], reg[src2], result);
                reg[dest] = (uint16_t)result;
                break;
            }

            // AND
            case 0x3:
                reg[dest] = reg[src1] & reg[src2];
                update_flag_logic(reg[dest]);
                break;

            // OR
            case 0x4:
                reg[dest] = reg[src1] | reg[src2];
                update_flag_logic(reg[dest]);
                break;

            // XOR
            case 0x5:
                reg[dest] = reg[src1] ^ reg[src2];
                update_flag_logic(reg[dest]);
                break;

            // LSL
            case 0x6:
                reg[dest] = reg[src1] << reg[src2];
                update_flag_logic(reg[dest]);
                break;

            // LSR
            case 0x7:
                reg[dest] = reg[src1] >> reg[src2];
                update_flag_logic(reg[dest]);
                break;

            // LOAD
            case 0x8:
                reg[dest] = data_memory[reg[src1]];
                break;

            // STORE
            case 0x9:
                data_memory[reg[dest]] = reg[src1];
                break;

            // LOADI
            case 0xA:
                reg[dest] = instruction & 0x00FF;
                break;

            // CMP
            case 0xB: {
                uint32_t result = (uint32_t)reg[src1] - (uint32_t)reg[src2];
                update_flag_sub(reg[src1], reg[src2], result);
                break;
            }

            // JMP
            case 0xC:
                LR = PC;
                PC = instruction & 0x0FFF;
                break;

            // JEQ
            case 0xD:
                if (SR & FLAG_Z) {
                    LR = PC;
                    PC = instruction & 0x0FFF;
                }
                break;
            
            // JNE
            case 0xE:
                if (!(SR & FLAG_Z)) {
                    LR = PC;
                    PC = instruction & 0x0FFF;
                }
                break;

            case 0xF:
                running = 0;
                break;
                
            default:
                break;
        }
        if (debug)
        {
            printf("\n===== CPU DEBUG STATE =====\n");

            for (int i = 0; i < REGISTERS_COUNT - 4; i++)
            {
                printf("R%-2d: 0x%04X (%u)\n", i, reg[i], reg[i]);
            }

            printf("===========================\n");
            printf("PC: 0x%04X\n", PC);
            printf("SP: 0x%04X\n", SP);
            printf("LR: 0x%04X\n", LR);
            printf("SR: 0x%04X\n", SR);

            printf("Click enter to proceed... ");
            char ch = getchar();
        }
    }

    printf("\n===== CPU FINAL STATE =====\n");

    for (int i = 0; i < REGISTERS_COUNT - 4; i++)
    {
        printf("R%-2d: 0x%04X (%u)\n", i, reg[i], reg[i]);
    }

    printf("===========================\n");
    printf("PC: 0x%04X\n", PC);
    printf("SP: 0x%04X\n", SP);
    printf("LR: 0x%04X\n", LR);
    printf("SR: 0x%04X\n", SR);

    return 0;
}
