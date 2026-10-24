_variables:
    msg .str = "Hello World\n"

_code:
    LOADI R1, #0xFF00
    LOADHI R1, #0xFF00

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