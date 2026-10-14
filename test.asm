LOADI R1, #10    ; [Line 0] R1 = 10
LOADI R2, #20    ; [Line 1] R2 = 20
LOADI R3, #8     ; [Line 2] Load the address of the subroutine (Line 8) into R3
CALL R3         ; [Line 3] Jump to Line 8, and save return address (4) into LR

HALT            ; [Line 4] The program will end here when it returns

NOP             ; [Line 5] Padding
NOP             ; [Line 6] Padding
NOP             ; [Line 7] Padding

; --- SUBROUTINE STARTS HERE ---
PUSH R1         ; [Line 8] Save 10 to stack. SP goes down.
PUSH R2         ; [Line 9] Save 20 to stack. SP goes down.
POP R4          ; [Line 10] Pop top of stack (20) into R4. SP goes up.
POP R5          ; [Line 11] Pop next value (10) into R5. SP goes up.
RET             ; [Line 12] Jump back to the address stored in LR (Line 4)