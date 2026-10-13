#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define REGISTERS_COUNT 16

/* Harvard architecture where the instruction and data memory are separete */
uint16_t instruction_memory[65536]; // Instruction ram
uint16_t data_memory[65536];        // 64K of data ram
uint16_t reg[REGISTERS_COUNT];

uint8_t debug = 0;

/*
 * PC (program counter, saves next adress to execute) - RF
 * SP (stack pointer, saves last adress of a stack) - RE
 * LR (link register, saves the location of the next instruction ) - RD
 * SR (status register, saves flags, Z/ZF, C/CF, N/S/SF, V/OF, I/IF) - RC
*/
#define PC reg[15]
#define SP reg[14]
#define LR reg[13]
#define SR reg[12]


/* 
 * Flags used by SR
 * Each one is just a mask
 * 00000001 (0x01) - FLAG_Z
 * 00000010 (0x02)- FLAG_C
 * etc
 * 
 * FLAG_Z - if result of last operation is zero
 * FLAG_C - if two unsigned int exceed the unsigned limit
 * FLAG_N - if the result is negative
 * FLAG_V - if two signed int exceed the signed limit
 * FLAG_I - controls whether cpu will listen to hardware interrupts
*/
#define FLAG_Z (1 << 0)
#define FLAG_C (1 << 1)
#define FLAG_N (1 << 2)
#define FLAG_V (1 << 3)
#define FLAG_I (1 << 4)

void update_flags_add(uint16_t a, uint16_t b, uint32_t result)
{
    uint16_t r = (uint16_t)result;

    SR &= ~(FLAG_Z | FLAG_C | FLAG_N | FLAG_V);

    if (r == 0)
        SR |= FLAG_Z;

    if (result > 0xFFFF)
        SR |= FLAG_C;

    if (r & 0x8000)
        SR |= FLAG_N;

    /*
     * Detect signed overflow (two's complement):
     * Signed overflow occurs when two operands of the same sign 
     * produce a result with the opposite sign.
     * 
     * 1. ~(a ^ b): High when operands 'a' and 'b' share the same sign.
     * 2. (a ^ r):  High when result 'r' differs in sign from operand 'a'.
     * 3. & 0x8000: Isolates the 16th bit (MSB/sign bit) to check if 
     *              both conditions are met simultaneously.
     */
    if (((~(a ^ b)) & (a ^ r) & 0x8000) != 0)
        SR |= FLAG_V;
}

void update_flag_sub(uint16_t a, uint16_t b, uint32_t result)
{
    uint16_t r = (uint16_t)result;

    SR &= ~(FLAG_Z | FLAG_C | FLAG_N | FLAG_V);

    if (r == 0)
        SR |= FLAG_Z;

    if (a < b)
        SR |= FLAG_C;

    if (r & 0x8000)
        SR |= FLAG_N;

     /* Same algorithm but first i am checking whether signs are different */
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

uint8_t load_program(const char* path, uint16_t* memory, size_t max_words)
{
    FILE* file = fopen(path, "rb");
    if (!file)
    {
        return 0;
    }

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
        if (!load_program(argv[1], instruction_memory, 65536))
        {
            printf("Failed to find a bin file\n");
            return 1;
        }
    }
    else if (argc == 3 && strcmp(argv[2], "--debug") == 0)
    {
        if (!load_program(argv[1], instruction_memory, 65536))
        {
            printf("Failed to find a bin file\n");
            return 1;
        }
        debug = 1;
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
