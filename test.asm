; --- PART 1: Construct 0xFF00 (MMIO Port) ---
; Since LOADI only goes up to 255 (0xFF), we load 0xFF and shift it left by 8
LOADI R1, #255      ; R1 = 0x00FF
LOADI R2, #8        ; R2 = 8
LSL R1, R1, R2      ; R1 is now 0xFF00 (Terminal Output Address)

; --- PART 2: Write "Hello World\n" into Data Memory ---
LOADI R2, #0        ; R2 will be our memory address pointer (starts at 0)
LOADI R4, #1        ; R4 holds the number 1 (so we can increment)

LOADI R3, #72       ; 'H'
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #101      ; 'e'
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #108      ; 'l'
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #108      ; 'l'
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #111      ; 'o'
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #32       ; ' ' (Space)
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #87       ; 'W'
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #111      ; 'o'
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #114      ; 'r'
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #108      ; 'l'
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #100      ; 'd'
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #10       ; '\n' (New line)
STORE R2, R3
ADD R2, R2, R4

LOADI R3, #0        ; '\0' (Null terminator)
STORE R2, R3

; --- PART 3: The Print Loop ---
LOADI R2, #0        ; Reset our memory pointer back to 0
LOADI R5, #0        ; R5 holds 0 so we can check for the null terminator

print_loop:
LOAD R3, R2         ; Read the character from data_memory[R2] into R3
CMP R3, R5          ; Compare the character to 0
JEQ end_print       ; If it is 0 (Null terminator), jump to the end

STORE R1, R3        ; WRITE TO TERMINAL! (Store char to 0xFF00)

ADD R2, R2, R4      ; Increment the memory pointer (R2++)
JMP print_loop      ; Loop back to read the next character

end_print:
HALT