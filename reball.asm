_variables:
    ; --- IDLE ---
    spr_idle_00 .int16 = #0x03C0 ; ......████...... (Top of head / Hair)
    spr_idle_01 .int16 = #0x07E0 ; .....██████..... (Head)
    spr_idle_02 .int16 = #0x0FF0 ; ....████████.... (Face)
    spr_idle_03 .int16 = #0x0FF0 ; ....████████.... (Face / Beard)
    spr_idle_04 .int16 = #0x07E0 ; .....██████..... (Neck / Chin)
    spr_idle_05 .int16 = #0x1FF8 ; ...██████████... (Shoulders)
    spr_idle_06 .int16 = #0x3FFC ; ..████████████.. (Chest / Arms)
    spr_idle_07 .int16 = #0x73CE ; .███..████..███. (Arms detached from torso)
    spr_idle_08 .int16 = #0x63C6 ; .██...████...██. (Hands)
    spr_idle_09 .int16 = #0x07E0 ; .....██████..... (Waist)
    spr_idle_10 .int16 = #0x0FF0 ; ....████████.... (Shorts)
    spr_idle_11 .int16 = #0x0E70 ; ....███..███.... (Shorts split)
    spr_idle_12 .int16 = #0x0660 ; .....██..██..... (Knees / Legs)
    spr_idle_13 .int16 = #0x0660 ; .....██..██..... (Socks)
    spr_idle_14 .int16 = #0x1E78 ; ...████..████... (Boots)
    spr_idle_15 .int16 = #0x1E78 ; ...████..████... (Boots bottom)

    ; --- RUN FRAME 1: THE STRIDE (Legs and arms wide) ---
    spr_down_run1_00 .int16 = #0x03C0 ; ......████...... (Top of head)
    spr_down_run1_01 .int16 = #0x07E0 ; .....██████..... (Head)
    spr_down_run1_02 .int16 = #0x0FF0 ; ....████████.... (Face)
    spr_down_run1_03 .int16 = #0x0FF0 ; ....████████.... (Face / Beard)
    spr_down_run1_04 .int16 = #0x07E0 ; .....██████..... (Neck)
    spr_down_run1_05 .int16 = #0x1FF8 ; ...██████████... (Shoulders)
    spr_down_run1_06 .int16 = #0x3FFC ; ..████████████.. (Chest)
    spr_down_run1_07 .int16 = #0x63C6 ; .██...████...██. (Arms swinging out)
    spr_down_run1_08 .int16 = #0xC3C3 ; ██....████....██ (Hands wide)
    spr_down_run1_09 .int16 = #0x07E0 ; .....██████..... (Waist)
    spr_down_run1_10 .int16 = #0x1FF8 ; ...██████████... (Shorts spread)
    spr_down_run1_11 .int16 = #0x381C ; ..███......███.. (Thighs split)
    spr_down_run1_12 .int16 = #0x300C ; ..██........██.. (Knees)
    spr_down_run1_13 .int16 = #0x300C ; ..██........██.. (Socks)
    spr_down_run1_14 .int16 = #0x781E ; .████......████. (Boots wide)
    spr_down_run1_15 .int16 = #0x781E ; .████......████. (Boots bottom)

    ; --- RUN FRAME 2: THE PLANT (Legs together, body bobs down 1px) ---
    spr_down_run2_00 .int16 = #0x0000 ; ................ (Empty space for bob)
    spr_down_run2_01 .int16 = #0x03C0 ; ......████...... (Top of head)
    spr_down_run2_02 .int16 = #0x07E0 ; .....██████..... (Head)
    spr_down_run2_03 .int16 = #0x0FF0 ; ....████████.... (Face)
    spr_down_run2_04 .int16 = #0x0FF0 ; ....████████.... (Face / Beard)
    spr_down_run2_05 .int16 = #0x07E0 ; .....██████..... (Neck)
    spr_down_run2_06 .int16 = #0x1FF8 ; ...██████████... (Shoulders)
    spr_down_run2_07 .int16 = #0x3FFC ; ..████████████.. (Chest)
    spr_down_run2_08 .int16 = #0x33CC ; ..██..████..██.. (Arms tucked in)
    spr_down_run2_09 .int16 = #0x43C2 ; .█....████....█. (Hands tucked)
    spr_down_run2_10 .int16 = #0x07E0 ; .....██████..... (Waist)
    spr_down_run2_11 .int16 = #0x0FF0 ; ....████████.... (Shorts together)
    spr_down_run2_12 .int16 = #0x07E0 ; .....██████..... (Knees crossing)
    spr_down_run2_13 .int16 = #0x07E0 ; .....██████..... (Socks crossing)
    spr_down_run2_14 .int16 = #0x0FF0 ; ....████████.... (Boots planted)
    spr_down_run2_15 .int16 = #0x0FF0 ; ....████████.... (Boots planted)

    font_start .int16 = #0x0000 ; <--- Keep this label as the anchor

    ; --- ASCII 32: Space ---
    font_032_0 .int16 = #0x0000 
    font_032_1 .int16 = #0x0000
    font_032_2 .int16 = #0x0000
    font_032_3 .int16 = #0x0000

    ; --- ASCII 33 to 47: Blank Padding (Punctuation) ---
    font_pad1_00 .int16 = #0x0000 ; 15 blank characters to keep 
    font_pad1_01 .int16 = #0x0000 ; the ASCII math perfectly aligned.
    font_pad1_02 .int16 = #0x0000 ; (Repeated 15 times behind the scenes:
    font_pad1_03 .int16 = #0x0000 ; maybe later I fill these in with !?.,
    font_pad1_04 .int16 = #0x0000
    font_pad1_05 .int16 = #0x0000
    font_pad1_06 .int16 = #0x0000
    font_pad1_07 .int16 = #0x0000
    font_pad1_08 .int16 = #0x0000
    font_pad1_09 .int16 = #0x0000
    font_pad1_10 .int16 = #0x0000
    font_pad1_11 .int16 = #0x0000
    font_pad1_12 .int16 = #0x0000
    font_pad1_13 .int16 = #0x0000
    font_pad1_14 .int16 = #0x0000
    font_pad1_15 .int16 = #0x0000
    font_pad1_16 .int16 = #0x0000
    font_pad1_17 .int16 = #0x0000
    font_pad1_18 .int16 = #0x0000
    font_pad1_19 .int16 = #0x0000
    font_pad1_20 .int16 = #0x0000
    font_pad1_21 .int16 = #0x0000
    font_pad1_22 .int16 = #0x0000
    font_pad1_23 .int16 = #0x0000
    font_pad1_24 .int16 = #0x0000
    font_pad1_25 .int16 = #0x0000
    font_pad1_26 .int16 = #0x0000
    font_pad1_27 .int16 = #0x0000
    font_pad1_28 .int16 = #0x0000
    font_pad1_29 .int16 = #0x0000
    font_pad1_30 .int16 = #0x0000
    font_pad1_31 .int16 = #0x0000
    font_pad1_32 .int16 = #0x0000
    font_pad1_33 .int16 = #0x0000
    font_pad1_34 .int16 = #0x0000
    font_pad1_35 .int16 = #0x0000
    font_pad1_36 .int16 = #0x0000
    font_pad1_37 .int16 = #0x0000
    font_pad1_38 .int16 = #0x0000
    font_pad1_39 .int16 = #0x0000
    font_pad1_40 .int16 = #0x0000
    font_pad1_41 .int16 = #0x0000
    font_pad1_42 .int16 = #0x0000
    font_pad1_43 .int16 = #0x0000
    font_pad1_44 .int16 = #0x0000
    font_pad1_45 .int16 = #0x0000
    font_pad1_46 .int16 = #0x0000
    font_pad1_47 .int16 = #0x0000
    font_pad1_48 .int16 = #0x0000
    font_pad1_49 .int16 = #0x0000
    font_pad1_50 .int16 = #0x0000
    font_pad1_51 .int16 = #0x0000
    font_pad1_52 .int16 = #0x0000
    font_pad1_53 .int16 = #0x0000
    font_pad1_54 .int16 = #0x0000
    font_pad1_55 .int16 = #0x0000
    font_pad1_56 .int16 = #0x0000
    font_pad1_57 .int16 = #0x0000
    font_pad1_58 .int16 = #0x0000
    font_pad1_59 .int16 = #0x0000

    ; --- ASCII 48 to 57: Numbers 0 - 9 ---
    font_0_0 .int16 = #0x3844 
    font_0_1 .int16 = #0x4444
    font_0_2 .int16 = #0x4444
    font_0_3 .int16 = #0x3800

    font_1_0 .int16 = #0x1030 
    font_1_1 .int16 = #0x1010
    font_1_2 .int16 = #0x1010
    font_1_3 .int16 = #0x3800

    font_2_0 .int16 = #0x3844 
    font_2_1 .int16 = #0x0408
    font_2_2 .int16 = #0x1020
    font_2_3 .int16 = #0x7C00

    font_3_0 .int16 = #0x3844 
    font_3_1 .int16 = #0x0418
    font_3_2 .int16 = #0x0444
    font_3_3 .int16 = #0x3800

    font_4_0 .int16 = #0x0818 
    font_4_1 .int16 = #0x2848
    font_4_2 .int16 = #0x7C08
    font_4_3 .int16 = #0x0800

    font_5_0 .int16 = #0x7C40 
    font_5_1 .int16 = #0x7804
    font_5_2 .int16 = #0x0444
    font_5_3 .int16 = #0x3800

    font_6_0 .int16 = #0x1820 
    font_6_1 .int16 = #0x4078
    font_6_2 .int16 = #0x4444
    font_6_3 .int16 = #0x3800

    font_7_0 .int16 = #0x7C04 
    font_7_1 .int16 = #0x0810
    font_7_2 .int16 = #0x2020
    font_7_3 .int16 = #0x2000

    font_8_0 .int16 = #0x3844 
    font_8_1 .int16 = #0x4438
    font_8_2 .int16 = #0x4444
    font_8_3 .int16 = #0x3800

    font_9_0 .int16 = #0x3844 
    font_9_1 .int16 = #0x443C
    font_9_2 .int16 = #0x0408
    font_9_3 .int16 = #0x3000

    ; --- ASCII 58 to 64: Blank Padding (Punctuation) ---
    font_pad2_00 .int16 = #0x0000 ; 7 blank characters
    font_pad2_01 .int16 = #0x0000 
    font_pad2_02 .int16 = #0x0000
    font_pad2_03 .int16 = #0x0000
    font_pad2_04 .int16 = #0x0000
    font_pad2_05 .int16 = #0x0000
    font_pad2_06 .int16 = #0x0000
    font_pad2_07 .int16 = #0x0000
    font_pad2_08 .int16 = #0x0000
    font_pad2_09 .int16 = #0x0000
    font_pad2_10 .int16 = #0x0000
    font_pad2_11 .int16 = #0x0000
    font_pad2_12 .int16 = #0x0000
    font_pad2_13 .int16 = #0x0000
    font_pad2_14 .int16 = #0x0000
    font_pad2_15 .int16 = #0x0000
    font_pad2_16 .int16 = #0x0000
    font_pad2_17 .int16 = #0x0000
    font_pad2_18 .int16 = #0x0000
    font_pad2_19 .int16 = #0x0000
    font_pad2_20 .int16 = #0x0000
    font_pad2_21 .int16 = #0x0000
    font_pad2_22 .int16 = #0x0000
    font_pad2_23 .int16 = #0x0000
    font_pad2_24 .int16 = #0x0000
    font_pad2_25 .int16 = #0x0000
    font_pad2_26 .int16 = #0x0000
    font_pad2_27 .int16 = #0x0000

    ; --- ASCII 65 to 90: Letters A - Z ---
    font_A_0 .int16 = #0x3844 
    font_A_1 .int16 = #0x447C
    font_A_2 .int16 = #0x4444
    font_A_3 .int16 = #0x4400

    font_B_0 .int16 = #0x7844 
    font_B_1 .int16 = #0x4478
    font_B_2 .int16 = #0x4444
    font_B_3 .int16 = #0x7800

    font_C_0 .int16 = #0x3844 
    font_C_1 .int16 = #0x4040
    font_C_2 .int16 = #0x4044
    font_C_3 .int16 = #0x3800

    font_D_0 .int16 = #0x7844 
    font_D_1 .int16 = #0x4444
    font_D_2 .int16 = #0x4444
    font_D_3 .int16 = #0x7800

    font_E_0 .int16 = #0x7C40 
    font_E_1 .int16 = #0x4078
    font_E_2 .int16 = #0x4040
    font_E_3 .int16 = #0x7C00

    font_F_0 .int16 = #0x7C40 
    font_F_1 .int16 = #0x4078
    font_F_2 .int16 = #0x4040
    font_F_3 .int16 = #0x4000

    font_G_0 .int16 = #0x3844 
    font_G_1 .int16 = #0x4040
    font_G_2 .int16 = #0x5C44
    font_G_3 .int16 = #0x3800

    font_H_0 .int16 = #0x4444 
    font_H_1 .int16 = #0x447C
    font_H_2 .int16 = #0x4444
    font_H_3 .int16 = #0x4400

    font_I_0 .int16 = #0x3810 
    font_I_1 .int16 = #0x1010
    font_I_2 .int16 = #0x1010
    font_I_3 .int16 = #0x3800

    font_J_0 .int16 = #0x0404 
    font_J_1 .int16 = #0x0404
    font_J_2 .int16 = #0x0444
    font_J_3 .int16 = #0x3800

    font_K_0 .int16 = #0x4448 
    font_K_1 .int16 = #0x5060
    font_K_2 .int16 = #0x5048
    font_K_3 .int16 = #0x4400

    font_L_0 .int16 = #0x4040 
    font_L_1 .int16 = #0x4040
    font_L_2 .int16 = #0x4040
    font_L_3 .int16 = #0x7C00

    font_M_0 .int16 = #0x446C 
    font_M_1 .int16 = #0x5444
    font_M_2 .int16 = #0x4444
    font_M_3 .int16 = #0x4400

    font_N_0 .int16 = #0x4464 
    font_N_1 .int16 = #0x544C
    font_N_2 .int16 = #0x4444
    font_N_3 .int16 = #0x4400

    font_O_0 .int16 = #0x3844 
    font_O_1 .int16 = #0x4444
    font_O_2 .int16 = #0x4444
    font_O_3 .int16 = #0x3800

    font_P_0 .int16 = #0x7844 
    font_P_1 .int16 = #0x4478
    font_P_2 .int16 = #0x4040
    font_P_3 .int16 = #0x4000

    font_Q_0 .int16 = #0x3844 
    font_Q_1 .int16 = #0x4444
    font_Q_2 .int16 = #0x5448
    font_Q_3 .int16 = #0x3400

    font_R_0 .int16 = #0x7844 
    font_R_1 .int16 = #0x4478
    font_R_2 .int16 = #0x5048
    font_R_3 .int16 = #0x4400

    font_S_0 .int16 = #0x3844 
    font_S_1 .int16 = #0x4038
    font_S_2 .int16 = #0x0444
    font_S_3 .int16 = #0x3800

    font_T_0 .int16 = #0x7C10 
    font_T_1 .int16 = #0x1010
    font_T_2 .int16 = #0x1010
    font_T_3 .int16 = #0x1000

    font_U_0 .int16 = #0x4444 
    font_U_1 .int16 = #0x4444
    font_U_2 .int16 = #0x4444
    font_U_3 .int16 = #0x3800

    font_V_0 .int16 = #0x4444 
    font_V_1 .int16 = #0x4444
    font_V_2 .int16 = #0x4428
    font_V_3 .int16 = #0x1000

    font_W_0 .int16 = #0x4444 
    font_W_1 .int16 = #0x4454
    font_W_2 .int16 = #0x546C
    font_W_3 .int16 = #0x4400

    font_X_0 .int16 = #0x4444 
    font_X_1 .int16 = #0x2810
    font_X_2 .int16 = #0x2844
    font_X_3 .int16 = #0x4400

    font_Y_0 .int16 = #0x4444 
    font_Y_1 .int16 = #0x2810
    font_Y_2 .int16 = #0x1010
    font_Y_3 .int16 = #0x1000

    font_Z_0 .int16 = #0x7C04 
    font_Z_1 .int16 = #0x0810
    font_Z_2 .int16 = #0x2040
    font_Z_3 .int16 = #0x7C00

    ; --- PITCH COLORS ---
    color_lgreen .int16 = #0x0740  ; Vibrant retro grass
    color_dgreen .int16 = #0x0520  ; Deep mower stripe grass
    color_white  .int16 = #0xFFFF  ; Pitch lines, the ball, UI text

    ; --- PLAYER & TEAM COLORS ---
    color_black  .int16 = #0x0000  ; Referee, boot details, text shadows
    color_skin   .int16 = #0xFEA0  ; Classic retro peach/skin tone
    color_red    .int16 = #0xF800  ; Team 1 Jersey (Pure Red)
    color_blue   .int16 = #0x03FF  ; Team 2 Jersey (Bright Azure/Cyan)

    ; --- OTHER COLORS ---
    color_yellow .int16 = #0xFFE0  ; Standard arcade color for "PRESS BUTTON TO START"
    color_brown  .int16 = #0x8200  ; For player hair and leather boots

    ; --- DIFFERENT STATE VARIABLES ---
    state      .int16 = #1 ; State of draw 1 - main menu 2 - playing
    ai_level   .int16 = #1 ; Level of ai 1 - easiest 2 - medium 3 - hardest
    red_score  .int16 = #0 ; Team red score
    blue_score .int16 = #0 ; Team blue score

    field_width  .int16 = #640  ; 4x screen width
    field_height .int16 = #340  ; 4x screen height

    camera_x     .int16 = #240  ; Start in the middle of the pitch
    camera_y     .int16 = #127


; --- permanent registers ---
; R0  - vram start 0x0000, also just 0
; R11 - vram end 0x3520

_code:
    LOADI  R0  #0
    LOADI  R11 #0x3520
    LOADHI R11 #0x3520

    LOADI R1 draw_pitch
    LOADHI R1 draw_pitch

    CALL R1

draw_pitch:
    LOADI  R2, color_lgreen
    LOADHI R2, color_lgreen
    LOAD   R2, R2             ; R2 = Light Green

    LOADI  R3, color_dgreen
    LOADHI R3, color_dgreen
    LOAD   R3, R3             ; R3 = Dark Green

    ADD    R4, R2, R0         ; R4 = Current Color (Starts Light)
    ADD    R6, R0, R0         ; R6 = Pixels Drawn Counter (Starts 0)
    
    LOADI  R7, #1600          
    LOADHI R7, #1600          ; R7 = Pixels per stripe (1600)
    
    LOADI  R8, #160           ; R8 = Pixels per row (160)
    LOADI  R9, #1             

    ; 3. Load camera_y
    LOADI  R10, camera_y
    LOADHI R10, camera_y
    LOAD   R10, R10           
    ADD    R11, R0, R0        ; R11 = Row counter (starts at 0)

calc_camera_loop:
    CMP    R11, R10           ; Have we counted up to camera_y?
    JEQ    start_drawing      ; If yes, we are ready to draw

    ADD    R11, R11, R9       ; row_counter++
    ADD    R6, R6, R8         ; pixels_drawn += 160 (one row)

    CMP    R6, R7             ; Have we reached 1600 pixels?
    JNE    calc_camera_loop   ; If no, keep counting

    ; If we hit 1600, reset pixel counter to 0 and swap colors
    ADD    R6, R0, R0         
    
    CMP    R4, R2             ; Are we currently Light Green?
    JEQ    set_calc_dark      

set_calc_light:
    ADD    R4, R2, R0         ; Switch to Light Green
    JMP    calc_camera_loop

set_calc_dark:
    ADD    R4, R3, R0         ; Switch to Dark Green
    JMP    calc_camera_loop

start_drawing:
    ADD    R1, R0, R0
    LOADI  R11, #0x3520
    LOADHI R11, #0x3520

draw_pitch_loop:
    STORE R1 R4
    ADD R1 R1 R9
    CMP R1 R11
    JEQ draw_pitch_end

    ADD R6 R6 R9
    CMP R6 R7
    JNE draw_pitch_loop

swap_colors:
    ADD R6 R0 R0 ; reset register
    CMP R4 R2 ; is current color light green
    JEQ set_dark
    JMP set_light

set_dark:
    ADD R4 R3 R0
    JMP draw_pitch_loop

set_light:
    ADD R4 R2 R0
    JMP draw_pitch_loop

draw_pitch_end:
    HALT