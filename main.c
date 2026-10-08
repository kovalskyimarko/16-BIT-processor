#include <stdint.h>
#include <stdbool.h>

#define REGISTERS_COUNT 16

/* Harvard architecture where the instruction and data memory are separete*/
uint16_t instruction_memory[65536]; // Instruction ram
uint16_t data_memory[65536];        // 64K of data ram
uint16_t reg[REGISTERS_COUNT];

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

int main()
{
    bool running = true;

    for (int i = 0; i < REGISTERS_COUNT; i++)
    {
        reg[i] = 0x0000;
    }

    SP = 0xFFFF;

    while (running)
    {
        uint16_t instruction = instruction_memory[PC];
        PC +=1;

        uint16_t optcode, dest, src1, src2;
        decode_instruction(instruction, &optcode, &dest, &src1, &src2);

        // TODO: implement flags
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
                running = false;
                break;
                
            default:
                break;
        }
    }

    return 0;
}