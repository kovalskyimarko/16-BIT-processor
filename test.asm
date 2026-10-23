_variables:
    msg .str = "Hello World\n"
    step .int16 = #1

_code:
    LOADI R1, #255
    LOADI R2, #8
    LSL R1, R1, R2      ; R1 = 0xFF00 (MMIO Terminal)

    LOADI R2, msg       ; R2 automatically gets address 0x0000
    LOADI R4, #1
    LOADI R5, #0

print_loop:
    LOAD R3, R2         ; Read char from data_memory[R2]
    CMP R3, R5          ; Check for \0
    JEQ end_print
    STORE R1, R3        ; Print char to 0xFF00
    ADD R2, R2, R4
    JMP print_loop

end_print:
    HALT