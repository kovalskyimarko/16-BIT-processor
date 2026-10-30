#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

const int NATIVE_WIDTH = 160;
const int NATIVE_HEIGHT = 85;

// 00000000XWASDKLP  X - will be set to 1 if any button is pressed
uint16_t keys_mask = 0;

#define REGISTERS_COUNT 16
#define CYCLES_PER_FRAME 500000

/* Harvard architecture where the instruction and data memory are separete */
uint16_t instruction_memory[65536]; // Instruction ram
uint16_t data_memory[65536];        // 64K of data ram
uint16_t reg[REGISTERS_COUNT];

uint8_t debug = 0;


#ifndef RASPBERRY_PI

#include <SDL.h>

const int SCALE = 3; // Make the Mac window 3x bigger

SDL_Window*   window;
SDL_Renderer* renderer;
SDL_Texture*  texture;

int init_SDL() {
    if (SDL_Init(SDL_INIT_VIDEO) != 0) {
        printf("SDL_Init Error: %s\n", SDL_GetError());
        return 1;
    }
    printf("SDL2 successfully initialized!\n");

    window = SDL_CreateWindow("Reball", 
        SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED,
        NATIVE_WIDTH * SCALE,
        NATIVE_HEIGHT * SCALE,
        0
    );

    renderer = SDL_CreateRenderer(window, -1, 
        SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    SDL_RenderSetLogicalSize(renderer, NATIVE_WIDTH, NATIVE_HEIGHT);

    SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, "0");

    texture = SDL_CreateTexture(renderer,
        SDL_PIXELFORMAT_RGB565,
        SDL_TEXTUREACCESS_STREAMING,
        NATIVE_WIDTH,
        NATIVE_HEIGHT
    );
    
    return 0;
}

void update_txt_SDL()
{
    // Flush screen
    SDL_RenderClear(renderer);

    int pitch = NATIVE_WIDTH * sizeof(uint16_t);
    SDL_UpdateTexture(texture, NULL, data_memory, pitch);
    SDL_RenderCopy(renderer, texture, NULL, NULL);


    SDL_RenderPresent(renderer);
}

void set_keymask(char key, int val)
{
    unsigned char mask = 0;

    switch (key)
    {
        case 'w': mask = (1 << 6); break;
        case 'a': mask = (1 << 5); break;
        case 's': mask = (1 << 4); break;
        case 'd': mask = (1 << 3); break;
        case 'k': mask = (1 << 2); break;
        case 'l': mask = (1 << 1); break;
        case 'p': mask = (1 << 0); break;
        default:  return;
    }

    if (val)
    {
        keys_mask |= (1 << 7);
        keys_mask |= mask;
    }
    else
    {
        keys_mask &= ~mask;

        if ((keys_mask & 0x7F) == 0)
        {
            keys_mask &= ~(1 << 7);
        }
    }
}

void loop_SDL()
{
    int run = 1;
    SDL_Event event;
    while (run)
    {
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT)
            {
                run = 0;
                break;
            }

            if (event.type == SDL_KEYDOWN) {
                if (event.key.keysym.sym == SDLK_ESCAPE) {
                    run = 0;
                } else if (event.key.keysym.sym <= 127) {
                    set_keymask((char)event.key.keysym.sym, 1);
                }
            }
            else if (event.type == SDL_KEYUP) {
                if (event.key.keysym.sym <= 127) {
                    set_keymask((char)event.key.keysym.sym, 0);
                }
            }
        }

        update_txt_SDL();
    }
}

void destroy_SDL()
{
    SDL_DestroyTexture(texture);
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
}

#endif

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
        SR |= FLAG_V;
}

void update_flag_logic(uint16_t result)
{
    SR &= ~(FLAG_Z | FLAG_C | FLAG_N | FLAG_V);

    if (result == 0)
        SR |= FLAG_Z;

    if (result & 0x8000)
        SR |= FLAG_N;
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

uint8_t load_program(const char* path, uint16_t* inst_mem, uint16_t* data_mem)
{
    FILE* file = fopen(path, "rb");
    if (!file)
    {
        return 0;
    }

    uint16_t header[2] = {0, 0};
    if (fread(header, sizeof(uint16_t), 2, file) != 2) {
        fprintf(stderr, "Error: Invalid binary header.\n");
        fclose(file);
        return 0;
    }

    uint16_t code_count = header[0];
    uint16_t data_count = header[1];

    if (fread(inst_mem, sizeof(uint16_t), code_count, file) != code_count) {
        fprintf(stderr, "Error: Failed to read instructions.\n");
        fclose(file);
        return 0;
    }

    const uint16_t DATA_OFFSET = 0x3520;

    if (data_count > 0) {
        if (fread(&data_mem[DATA_OFFSET], sizeof(uint16_t), data_count, file) != data_count) {
            fprintf(stderr, "Error: Failed to read data segment.\n");
            fclose(file);
            return 0;
        }
    }

    fclose(file);
    printf("Successfully loaded %u instructions and %u data words.\n", code_count, data_count);
    return 1;
}

void step_cpu(uint8_t* running)
{
    uint16_t instruction = instruction_memory[PC];
    PC +=1;

    uint16_t optcode, dest, src1, src2;
    decode_instruction(instruction, &optcode, &dest, &src1, &src2);

    switch (optcode)
    {
        // NOP
        case 0x0:

            // The destination will act as extended instruction
            switch (dest)
            {
                case 0x0:
                    break;

                // PUSH
                case 0x1:
                    data_memory[SP] = reg[src1];
                    SP--;
                    break;
                
                // POP
                case 0x2:
                    SP++;
                    reg[src1] = data_memory[SP];
                    break;

                // CALL
                case 0x3:
                    LR = PC;
                    PC = reg[src1];
                    break;
                
                // RET
                case 0x4:
                    PC = LR;
                    break;
                
                // HALT
                case 0xF:
                    *running = 0;
                    break;
            }

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
            if (reg[dest] == 0xFF00)
            {
                putchar((char)reg[src1]);
                fflush(stdout);
            }
            else
            {
                data_memory[reg[dest]] = reg[src1];
            }
            break;

        // LOADI
        case 0xA:
            reg[dest] = instruction & 0x00FF;
            break;

        // CMP
        case 0xB: {
            uint32_t result = (uint32_t)reg[dest] - (uint32_t)reg[src1];
            update_flag_sub(reg[dest], reg[src1], result);
            break;
        }

        // JMP
        case 0xC:
            PC = instruction & 0x0FFF;
            break;

        // JEQ
        case 0xD:
            if (SR & FLAG_Z) {
                PC = instruction & 0x0FFF;
            }
            break;
        
        // JNE
        case 0xE:
            if (!(SR & FLAG_Z)) {
                PC = instruction & 0x0FFF;
            }
            break;

        // LOADHI
        case 0xF:
            reg[dest] = (reg[dest] & 0x00FF) | ((instruction & 0x00FF) << 8);
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

int main(int argc, const char* argv[])
{
    uint8_t running = 1;

    for (int i = 0; i < REGISTERS_COUNT; i++)
    {
        reg[i] = 0x0000;
    }

    SP = 0xFEFF;

    if (argc == 2)
    {
        if (!load_program(argv[1], instruction_memory, data_memory)) 
        {
            return EXIT_FAILURE;
        }
    }
    else if (argc == 3 && strcmp(argv[2], "--debug") == 0)
    {
        if (!load_program(argv[1], instruction_memory, data_memory)) 
        {
            return EXIT_FAILURE;
        }
        debug = 1;
    }
    else
    {
        printf("Usage: %s <program.bin> [--debug]\n", argv[0]);
        return EXIT_FAILURE;
    }

    
#ifndef RASPBERRY_PI
    if (init_SDL() != 0)
    {
        return EXIT_FAILURE;
    }
    SDL_Event event;
#endif

    while (running)
    {
#ifndef RASPBERRY_PI
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT)
            {
                running = 0;
                break;
            }

            if (event.type == SDL_KEYDOWN) {
                if (event.key.keysym.sym == SDLK_ESCAPE) {
                    running = 0;
                } else if (event.key.keysym.sym <= 127) {
                    set_keymask((char)event.key.keysym.sym, 1);
                }
            }
            else if (event.type == SDL_KEYUP) {
                if (event.key.keysym.sym <= 127) {
                    set_keymask((char)event.key.keysym.sym, 0);
                }
            }
        }

        data_memory[0xFF01] = keys_mask;
#endif

        int cycles = debug ? 1 : CYCLES_PER_FRAME;
        for (int i = 0; i < cycles && running; i++)
        {
            step_cpu(&running);

            if (data_memory[0xFF02] != 0)
            {
                data_memory[0xFF02] = 0;
                break;
            }
        }

#ifndef RASPBERRY_PI
        update_txt_SDL();
#endif
    }

#ifndef RASPBERRY_PI
    loop_SDL();
    destroy_SDL();
#endif

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
