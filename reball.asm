_variables:
    ; --- IDLE ---
    ; Row 00: ......████...... (Hair)
    spr_idle_00_w1 .int16 = #0x0000
    spr_idle_00_w2 .int16 = #0x0055
    spr_idle_00_w3 .int16 = #0x5500
    spr_idle_00_w4 .int16 = #0x0000

    ; Row 01: .....██████..... (Head/Hair)
    spr_idle_01_w1 .int16 = #0x0000
    spr_idle_01_w2 .int16 = #0x0555
    spr_idle_01_w3 .int16 = #0x5550
    spr_idle_01_w4 .int16 = #0x0000

    ; Row 02: ....████████.... (Face)
    spr_idle_02_w1 .int16 = #0x0000
    spr_idle_02_w2 .int16 = #0x2222
    spr_idle_02_w3 .int16 = #0x2222
    spr_idle_02_w4 .int16 = #0x0000

    ; Row 03: ....████████.... (Face / Beard)
    spr_idle_03_w1 .int16 = #0x0000
    spr_idle_03_w2 .int16 = #0x2222
    spr_idle_03_w3 .int16 = #0x2222
    spr_idle_03_w4 .int16 = #0x0000

    ; Row 04: .....██████..... (Neck / Chin)
    spr_idle_04_w1 .int16 = #0x0000
    spr_idle_04_w2 .int16 = #0x0222
    spr_idle_04_w3 .int16 = #0x2220
    spr_idle_04_w4 .int16 = #0x0000

    ; Row 05: ...██████████... (Shoulders / Jersey)
    spr_idle_05_w1 .int16 = #0x0003
    spr_idle_05_w2 .int16 = #0x3333
    spr_idle_05_w3 .int16 = #0x3333
    spr_idle_05_w4 .int16 = #0x3000

    ; Row 06: ..████████████.. (Short Sleeves & Chest)
    ; Outer edges use Skin (2), inner uses Jersey (3)
    spr_idle_06_w1 .int16 = #0x0022
    spr_idle_06_w2 .int16 = #0x3333
    spr_idle_06_w3 .int16 = #0x3333
    spr_idle_06_w4 .int16 = #0x2200

    ; Row 07: .███..████..███. (Arms detached from torso)
    spr_idle_07_w1 .int16 = #0x0222
    spr_idle_07_w2 .int16 = #0x0033
    spr_idle_07_w3 .int16 = #0x3300
    spr_idle_07_w4 .int16 = #0x2220

    ; Row 08: .██...████...██. (Hands & Waist)
    spr_idle_08_w1 .int16 = #0x0220
    spr_idle_08_w2 .int16 = #0x0033
    spr_idle_08_w3 .int16 = #0x3300
    spr_idle_08_w4 .int16 = #0x0220

    ; Row 09: .....██████..... (Waist / Jersey)
    spr_idle_09_w1 .int16 = #0x0000
    spr_idle_09_w2 .int16 = #0x0333
    spr_idle_09_w3 .int16 = #0x3330
    spr_idle_09_w4 .int16 = #0x0000

    ; Row 10: ....████████.... (Shorts)
    spr_idle_10_w1 .int16 = #0x0000
    spr_idle_10_w2 .int16 = #0x4444
    spr_idle_10_w3 .int16 = #0x4444
    spr_idle_10_w4 .int16 = #0x0000

    ; Row 11: ....███..███.... (Shorts split)
    spr_idle_11_w1 .int16 = #0x0000
    spr_idle_11_w2 .int16 = #0x4440
    spr_idle_11_w3 .int16 = #0x0444
    spr_idle_11_w4 .int16 = #0x0000

    ; Row 12: .....██..██..... (Knees / Legs)
    spr_idle_12_w1 .int16 = #0x0000
    spr_idle_12_w2 .int16 = #0x0220
    spr_idle_12_w3 .int16 = #0x0220
    spr_idle_12_w4 .int16 = #0x0000

    ; Row 13: .....██..██..... (Socks)
    spr_idle_13_w1 .int16 = #0x0000
    spr_idle_13_w2 .int16 = #0x0440
    spr_idle_13_w3 .int16 = #0x0440
    spr_idle_13_w4 .int16 = #0x0000

    ; Row 14: ...████..████... (Boots)
    spr_idle_14_w1 .int16 = #0x0005
    spr_idle_14_w2 .int16 = #0x5550
    spr_idle_14_w3 .int16 = #0x0555
    spr_idle_14_w4 .int16 = #0x5000

    ; Row 15: ...████..████... (Boots bottom/studs)
    ; Uses Black (1) for contrast at the bottom of the sprite
    spr_idle_15_w1 .int16 = #0x0001
    spr_idle_15_w2 .int16 = #0x1110
    spr_idle_15_w3 .int16 = #0x0111
    spr_idle_15_w4 .int16 = #0x1000

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
    color_black   .int16 = #0x0000  ; Referee, boot details, text shadows
    color_skin    .int16 = #0xFEA0  ; Classic retro peach/skin tone
    color_jersey   .int16 = #0xF800 ; Jersey color red/blue
    color_white_t .int16 = #0xFFFF  ; White color for shorts
    color_brown   .int16 = #0x8200  ; For player hair and leather boots

    color_red     .int16 = #0xF800  ; Team 1 Jersey (Pure Red)
    color_blue   .int16 = #0x03FF  ;  Team 2 Jersey (Cyan)

    ; --- OTHER COLORS ---
    color_yellow .int16 = #0xFFE0  ; Standard arcade color for "PRESS BUTTON TO START"

    ; --- DIFFERENT STATE VARIABLES ---
    state      .int16 = #1 ; State of draw 1 - main menu 2 - playing
    ai_level   .int16 = #1 ; Level of ai 1 - easiest 2 - medium 3 - hardest
    red_score  .int16 = #0 ; Team red score
    blue_score .int16 = #0 ; Team blue score

    field_width  .int16 = #640  ; 4x screen width
    field_height .int16 = #340  ; 4x screen height

    camera_x     .int16 = #240  ; Start in the middle of the pitch
    camera_y     .int16 = #127

    ; --- PLAYERS POSITION ---

    ; HOME TEAM (4-3-3) - Left to Right
    player_0_x   .int16 = #25       ; P0  - GK (25, 168)
    player_0_y   .int16 = #168

    player_1_x   .int16 = #110      ; P1  - Left Back (110, 48)
    player_1_y   .int16 = #48
    player_2_x   .int16 = #110      ; P2  - Center Back Left (110, 128)
    player_2_y   .int16 = #128
    player_3_x   .int16 = #110      ; P3  - Center Back Right (110, 208)
    player_3_y   .int16 = #208
    player_4_x   .int16 = #110      ; P4  - Right Back (110, 288)
    player_4_y   .int16 = #288

    player_5_x   .int16 = #210      ; P5  - Left Midfielder (210, 88)
    player_5_y   .int16 = #88
    player_6_x   .int16 = #210      ; P6  - Central Midfielder (210, 168)
    player_6_y   .int16 = #168
    player_7_x   .int16 = #210      ; P7  - Right Midfielder (210, 248)
    player_7_y   .int16 = #248

    player_8_x   .int16 = #295      ; P8  - Left Winger (295, 72)
    player_8_y   .int16 = #72
    player_9_x   .int16 = #279      ; P9  - Center Forward (295, 168)
    player_9_y   .int16 = #168
    player_10_x  .int16 = #295      ; P10 - Right Winger (295, 264)
    player_10_y  .int16 = #264

    ; AWAY TEAM (4-3-3) - Right to Left (Mirrored across X = 320)
    player_11_x  .int16 = #345      ; P11 - Left Winger (345, 72)
    player_11_y  .int16 = #72
    player_12_x  .int16 = #345      ; P12 - Center Forward (345, 168)
    player_12_y  .int16 = #168
    player_13_x  .int16 = #345      ; P13 - Right Winger (345, 264)
    player_13_y  .int16 = #264

    player_14_x  .int16 = #430      ; P14 - Left Midfielder (430, 88)
    player_14_y  .int16 = #88
    player_15_x  .int16 = #430      ; P15 - Central Midfielder (430, 168)
    player_15_y  .int16 = #168
    player_16_x  .int16 = #430      ; P16 - Right Midfielder (430, 248)
    player_16_y  .int16 = #248

    player_17_x  .int16 = #530      ; P17 - Left Back (530, 48)
    player_17_y  .int16 = #48
    player_18_x  .int16 = #530      ; P18 - Center Back Left (530, 128)
    player_18_y  .int16 = #128
    player_19_x  .int16 = #530      ; P19 - Center Back Right (530, 208)
    player_19_y  .int16 = #208
    player_20_x  .int16 = #530      ; P20 - Right Back (530, 288)
    player_20_y  .int16 = #288

    player_21_x  .int16 = #615      ; P21 - GK (615, 168)
    player_21_y  .int16 = #168


; --- permanent registers ---
; R0  - vram start 0x0000, also just 0

_code:

draw_loop:
    LOADI  R1, draw_pitch
    LOADHI R1, draw_pitch
    CALL   R1

    LOADI R2, draw_players
    LOADHI R2, draw_players
    CALL R2

    LOADI  R3, #0xFF02
    LOADHI R3, #0xFF02
    LOADI  R4, #1
    STORE  R3, R4

check_for_movement:
    LOADI R3 #0xFF01
    LOADHI R3 #0xFF01
    LOAD R3 R3

    LOADI R4 #0x40
    LOADHI R4 #0x40
    AND R4 R4 R3
    JNE move_w
        
    LOADI R4 #0x20
    LOADHI R4 #0x20
    AND R4 R4 R3
    JNE move_a

    LOADI R4 #0x10
    LOADHI R4 #0x10
    AND R4 R4 R3
    JNE move_s

    LOADI R4 #0x08
    LOADHI R4 #0x08
    AND R4 R4 R3
    JNE move_d

    JMP draw_loop

move_w:
    LOADI R4 camera_y
    LOADHI R4 camera_y
    LOAD R6 R4

    LOADI R5 #5
    CMP R6 R5
    LOADI  R7 #0x04           ; Load FLAG_N mask (1 << 2).
    AND R7 R7 RC               ; Check if N-flag was set
    JNE    check_for_movement  ; camera_y < 5; N-flag was set

    LOADI  R8, #2
    SUB R6 R6 R8
    STORE R4 R6
    JMP draw_loop

move_s:
    LOADI R4 camera_y
    LOADHI R4 camera_y
    LOAD R6 R4

    LOADI R5 #255
    LOADHI R5 #255
    CMP R6 R5
    LOADI  R7 #0x04           ; Load FLAG_N mask (1 << 2).
    AND R7 R7 RC               ; Check if N-flag was set
    JEQ    check_for_movement  ; camera_y > 250; N-flag wasnt set

    LOADI  R8, #2
    ADD    R6, R6, R8
    STORE R4 R6
    JMP draw_loop

move_a:
    LOADI R4 camera_x
    LOADHI R4 camera_x
    LOAD R6 R4

    LOADI R5 #5
    LOADHI R5 #5
    CMP R6 R5
    LOADI  R7 #0x04           ; Load FLAG_N mask (1 << 2).
    AND R7 R7 RC               ; Check if N-flag was set
    JNE    check_for_movement  ; camera_x < 5; N-flag was set

    LOADI  R8, #2
    SUB    R6, R6, R8
    STORE R4 R6
    JMP draw_loop

move_d:
    LOADI R4 camera_x
    LOADHI R4 camera_x
    LOAD R6 R4

    LOADI R5 #480
    LOADHI R5 #480
    CMP R6 R5
    LOADI  R7 #0x04           ; Load FLAG_N mask (1 << 2).
    AND R7 R7 RC               ; Check if N-flag was set
    JEQ    check_for_movement  ; camera_x > 475; N-flag wasnt set

    LOADI  R8, #2
    ADD R6 R6 R8
    STORE R4 R6    
    JMP draw_loop

draw_pitch:
    LOADI  R2, color_lgreen
    LOADHI R2, color_lgreen
    LOAD   R2, R2             ; R2 = Light Green

    LOADI  R3, color_dgreen
    LOADHI R3, color_dgreen
    LOAD   R3, R3             ; R3 = Dark Green

    ADD    R4, R2, R0         ; R4 = Current Color (Starts Light Green)
    XOR    R2, R2, R3         ; R2 = XOR Toggle Mask

    LOADI  R6, #0             ; R6 = Row-in-stripe counter (0 to 9)
    LOADI  R7, #10            ; R7 = 10 rows per grass stripe (10 * 160 = 1600px)
    LOADI  R9, #1             ; R9 = Constant 1

    ; Load camera_y
    LOADI  R10, camera_y
    LOADHI R10, camera_y
    LOAD   R10, R10           ; R10 = camera_y
    LOADI  R11, #0            ; R11 = Current Y counter (0 to camera_y)

calc_camera_loop:
    CMP    R11, R10           ; Reached camera_y?
    JEQ    start_drawing

    ADD    R11, R11, R9       ; camera row_counter++
    ADD    R6, R6, R9         ; stripe_row_counter++

    CMP    R6, R7             ; Reached 10 rows?
    JNE    calc_camera_loop

    LOADI  R6, #0             ; Reset stripe row counter
    XOR    R4, R4, R2         ; Flip grass color
    JMP    calc_camera_loop

start_drawing:
    LOADI  R1, #0             ; R1 = VRAM pointer (0x0000)
    LOADI  R11, #0            ; R11 = screen_x counter (0 to 159)
    LOADI  R3, #160           ; R3 = Screen width (160)

    LOADI  R10, #0x3520       
    LOADHI R10, #0x3520       ; R10 = End of VRAM (0x3520)

    ; R5 = 320 - camera_x (White stripe's screen X coordinate)
    LOADI  R5, #320
    LOADHI R5, #320
    LOADI  R8, camera_x
    LOADHI R8, camera_x
    LOAD   R8, R8
    SUB    R5, R5, R8         ; R5 = 320 - camera_x

    ; Load white color into R8
    LOADI  R8, color_white
    LOADHI R8, color_white
    LOAD   R8, R8

draw_pitch_loop:
    CMP    R11, R5            ; Does screen_x (R11) == stripe_screen_x (R5)?
    JNE    draw_normal_color
    STORE  R1, R8             ; Draw white pixel
    JMP    continue_draw_pitch

draw_normal_color:
    STORE  R1, R4             ; Draw current green pixel

continue_draw_pitch:
    ADD    R1, R1, R9         ; Next VRAM address (+1)
    ADD    R11, R11, R9       ; screen_x + 1
    CMP    R11, R3            ; End of row (160)?
    ; If end wasn't reached why check if its the end of camera or color switch
    JNE    draw_pitch_loop

    CMP    R1, R10            ; Reached end of VRAM (0x3520)?
    JEQ    draw_pitch_end

    LOADI  R11, #0            ; Reset screen_x to 0 for next row
    ADD    R6, R6, R9         ; Increment stripe row counter (+1 row)
    CMP    R6, R7             ; Reached 10 rows?
    JNE    draw_pitch_loop

    LOADI  R6, #0             ; Reset stripe row counter
    XOR    R4, R4, R2         ; Flip green color
    JMP    draw_pitch_loop

draw_pitch_end:
    JMP draw_penalty_box

draw_penalty_box:
    ; Save current LR, because next calls will overwrite it
    PUSH R13

    LOADI R1, #80             ; R1 = World Y
    LOADI R2, #20              ; R2 = World X Start
    LOADI R3, #70             ; R3 = World X End
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

    LOADI R1, #70             ; R1 = World X
    LOADI R2, #80             ; R2 = World Y Start
    LOADI R3, #260            ; R3 = World Y End
    LOADHI R3, #260
    LOADI R4, draw_vline
    LOADHI R4, draw_vline
    CALL R4

    LOADI R1, #260            ; R1 = World Y
    LOADHI R1, #260
    LOADI R2, #20              ; R2 = World X Start
    LOADI R3, #70             ; R3 = World X End
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

    LOADI R1, #80             ; R1 = World Y
    LOADI R2, #580            ; R2 = World X Start
    LOADHI R2, #580
    LOADI R3, #630            ; R3 = World X End
    LOADHI R3, #630
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

    LOADI R1, #580            ; R1 = World X
    LOADHI R1, #580
    LOADI R2, #80             ; R2 = World Y Start
    LOADI R3, #260            ; R3 = World Y End
    LOADHI R3, #260
    LOADI R4, draw_vline
    LOADHI R4, draw_vline
    CALL R4

    LOADI R1, #260            ; R1 = World Y
    LOADHI R1, #260
    LOADI R2, #580            ; R2 = World X Start
    LOADHI R2, #580
    LOADI R3, #630            ; R3 = World X End
    LOADHI R3, #630
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4


draw_out_lines:
    LOADI R1, #10             ; R1 = World Y
    LOADI R2, #0              ; R2 = World X Start
    LOADI R3, #640             ; R3 = World X End
    LOADHI R3, #640             ; R3 = World X End
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

    LOADI R1, #330             ; R1 = World Y
    LOADHI R1, #330             ; R1 = World Y
    LOADI R2, #0              ; R2 = World X Start
    LOADI R3, #640             ; R3 = World X End
    LOADHI R3, #640             ; R3 = World X End
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

    LOADI R1, #20            ; R1 = World X
    LOADI R2, #0             ; R2 = World Y Start
    LOADI R3, #340            ; R3 = World Y End
    LOADHI R3, #340
    LOADI R4, draw_vline
    LOADHI R4, draw_vline
    CALL R4

    LOADI R1, #630            ; R1 = World X
    LOADHI R1, #630            ; R1 = World X
    LOADI R2, #0             ; R2 = World Y Start
    LOADI R3, #340            ; R3 = World Y End
    LOADHI R3, #340
    LOADI R4, draw_vline
    LOADHI R4, draw_vline
    CALL R4

draw_circle:
    ; Exact Midpoint Circle (Center: X=320, Y=171, Radius=20)

    ; --- 1. Top & Bottom Flat Caps (Y = 151 & 191, X = 316..324, len 9) ---
    LOADI  R1, #151
    LOADI  R2, #316
    LOADHI R2, #316
    LOADI  R3, #324
    LOADHI R3, #324
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #191
    LOADI  R2, #316
    LOADHI R2, #316
    LOADI  R3, #324
    LOADHI R3, #324
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    ; --- 2. Left & Right Flat Caps (X = 300 & 340, Y = 167..175, len 9) ---
    LOADI  R1, #300
    LOADHI R1, #300
    LOADI  R2, #167
    LOADI  R3, #175
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #340
    LOADHI R1, #340
    LOADI  R2, #167
    LOADI  R3, #175
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    ; --- 3. Step 1 Horizontal (Y = 152 & 190, offsets 5..7, len 3) ---
    LOADI  R1, #152
    LOADI  R2, #313
    LOADHI R2, #313
    LOADI  R3, #315
    LOADHI R3, #315
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #152
    LOADI  R2, #325
    LOADHI R2, #325
    LOADI  R3, #327
    LOADHI R3, #327
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #190
    LOADI  R2, #313
    LOADHI R2, #313
    LOADI  R3, #315
    LOADHI R3, #315
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #190
    LOADI  R2, #325
    LOADHI R2, #325
    LOADI  R3, #327
    LOADHI R3, #327
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    ; --- 4. Step 1 Vertical (X = 301 & 339, offsets 5..7, len 3) ---
    LOADI  R1, #301
    LOADHI R1, #301
    LOADI  R2, #164
    LOADI  R3, #166
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #301
    LOADHI R1, #301
    LOADI  R2, #176
    LOADI  R3, #178
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #339
    LOADHI R1, #339
    LOADI  R2, #164
    LOADI  R3, #166
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #339
    LOADHI R1, #339
    LOADI  R2, #176
    LOADI  R3, #178
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    ; --- 5. Step 2 Horizontal (Y = 153 & 189, offsets 8..9, len 2) ---
    LOADI  R1, #153
    LOADI  R2, #311
    LOADHI R2, #311
    LOADI  R3, #312
    LOADHI R3, #312
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #153
    LOADI  R2, #328
    LOADHI R2, #328
    LOADI  R3, #329
    LOADHI R3, #329
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #189
    LOADI  R2, #311
    LOADHI R2, #311
    LOADI  R3, #312
    LOADHI R3, #312
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #189
    LOADI  R2, #328
    LOADHI R2, #328
    LOADI  R3, #329
    LOADHI R3, #329
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    ; --- 6. Step 2 Vertical (X = 302 & 338, offsets 8..9, len 2) ---
    LOADI  R1, #302
    LOADHI R1, #302
    LOADI  R2, #162
    LOADI  R3, #163
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #302
    LOADHI R1, #302
    LOADI  R2, #179
    LOADI  R3, #180
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #338
    LOADHI R1, #338
    LOADI  R2, #162
    LOADI  R3, #163
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #338
    LOADHI R1, #338
    LOADI  R2, #179
    LOADI  R3, #180
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    ; --- 7. Step 3 Horizontal (Y = 154 & 188, offset 10, len 2) ---
    LOADI  R1, #154
    LOADI  R2, #309
    LOADHI R2, #309
    LOADI  R3, #310
    LOADHI R3, #310
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #154
    LOADI  R2, #330
    LOADHI R2, #330
    LOADI  R3, #331
    LOADHI R3, #331
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #188
    LOADI  R2, #309
    LOADHI R2, #309
    LOADI  R3, #310
    LOADHI R3, #310
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #188
    LOADI  R2, #330
    LOADHI R2, #330
    LOADI  R3, #331
    LOADHI R3, #331
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    ; --- 8. Step 3 Vertical (X = 303 & 337, Y = 160..161 & 181..182, len 2) ---
    LOADI  R1, #303
    LOADHI R1, #303
    LOADI  R2, #160
    LOADI  R3, #161
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #303
    LOADHI R1, #303
    LOADI  R2, #181
    LOADI  R3, #182
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #337
    LOADHI R1, #337
    LOADI  R2, #160
    LOADI  R3, #161
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #337
    LOADHI R1, #337
    LOADI  R2, #181
    LOADI  R3, #182
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    ; --- 9. Exact 45-Degree Diagonal Pixels ---

    ; Y = 155 & 187 (X = 307..308 & 332..333)
    LOADI  R1, #155
    LOADI  R2, #307
    LOADHI R2, #307
    LOADI  R3, #308
    LOADHI R3, #308
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #155
    LOADI  R2, #332
    LOADHI R2, #332
    LOADI  R3, #333
    LOADHI R3, #333
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #187
    LOADI  R2, #307
    LOADHI R2, #307
    LOADI  R3, #308
    LOADHI R3, #308
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #187
    LOADI  R2, #332
    LOADHI R2, #332
    LOADI  R3, #333
    LOADHI R3, #333
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    ; Y = 156 & 186 (X = 306 & 334)
    LOADI  R1, #156
    LOADI  R2, #306
    LOADHI R2, #306
    LOADI  R3, #306
    LOADHI R3, #306
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #156
    LOADI  R2, #334
    LOADHI R2, #334
    LOADI  R3, #334
    LOADHI R3, #334
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #186
    LOADI  R2, #306
    LOADHI R2, #306
    LOADI  R3, #306
    LOADHI R3, #306
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #186
    LOADI  R2, #334
    LOADHI R2, #334
    LOADI  R3, #334
    LOADHI R3, #334
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    ; X = 305 & 335 (Y = 157 & 185)
    LOADI  R1, #305
    LOADHI R1, #305
    LOADI  R2, #157
    LOADI  R3, #157
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #305
    LOADHI R1, #305
    LOADI  R2, #185
    LOADI  R3, #185
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #335
    LOADHI R1, #335
    LOADI  R2, #157
    LOADI  R3, #157
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #335
    LOADHI R1, #335
    LOADI  R2, #185
    LOADI  R3, #185
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    ; X = 304 & 336 (Y = 158..159 & 183..184)
    LOADI  R1, #304
    LOADHI R1, #304
    LOADI  R2, #158
    LOADI  R3, #159
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #304
    LOADHI R1, #304
    LOADI  R2, #183
    LOADI  R3, #184
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #336
    LOADHI R1, #336
    LOADI  R2, #158
    LOADI  R3, #159
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    LOADI  R1, #336
    LOADHI R1, #336
    LOADI  R2, #183
    LOADI  R3, #184
    LOADI  R4, draw_vline
    LOADHI R4, draw_vline
    CALL   R4

    ; --- 10. Center Kick-Off Spot (3x3 square at 320, 171) ---
    LOADI  R1, #170
    LOADI  R2, #319
    LOADHI R2, #319
    LOADI  R3, #321
    LOADHI R3, #321
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #171
    LOADI  R2, #319
    LOADHI R2, #319
    LOADI  R3, #321
    LOADHI R3, #321
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    LOADI  R1, #172
    LOADI  R2, #319
    LOADHI R2, #319
    LOADI  R3, #321
    LOADHI R3, #321
    LOADI  R4, draw_hline
    LOADHI R4, draw_hline
    CALL   R4

    POP    R13
    RET

draw_hline:
    LOADI  R4, camera_y
    LOADHI R4, camera_y
    LOAD R4 R4

    CMP R1 R4
    LOADI  R5 #0x04      ; Load FLAG_N mask (1 << 2).
    AND R5 R5 R12        ; Check if N-flag was set
    JNE    abort_hline  ; World_Y < camera_y; N-flag was set
    
    LOADI  R4, camera_x
    LOADHI R4, camera_x
    LOAD R4 R4

    CMP R3 R4
    LOADI  R5 #0x04      ; Load FLAG_N mask (1 << 2).
    AND R5 R5 R12        ; Check if N-flag was set
    JNE    abort_hline  ; World_X2 < camera_x; N-flag was set

    SUB R2, R2, R4         ; Screen_X1 = World_X1 - camera_x
    SUB R3, R3, R4         ; Screen_X2 = World_X2 - camera_x

    LOADI  R4, camera_y
    LOADHI R4, camera_y
    LOAD   R4, R4
    SUB    R1, R1, R4      ; Screen_Y = World_Y - camera_y

    LOADI R4, #85
    CMP   R1, R4
    LOADI R5, #0x04
    AND   R5, R5, R12
    JEQ   abort_hline      ; Screen_Y >= 85

; --- Clamp Screen_X1 to 0 if its negative ---
    LOADI  R5, #0
    LOADHI R5, #0x8000
    AND    R4, R2, R5
    JEQ    hline_skip_left_clip  ; FLAG_Z was set meaning R2 isn't negative
    LOADI  R2, #0

hline_skip_left_clip:
    LOADI R4, #160
    CMP   R2, R4
    LOADI R5, #0x04
    AND   R5, R5, RC
    JEQ   abort_hline      ; Screen_X1 is bigger then 160

; --- Clamp Screen_X2 to 159 if its >=160
    LOADI R4, #159
    CMP   R3, R4
    LOADI R5, #0x04
    AND   R5, R5, RC
    JNE   hline_skip_right_clip ; The Sreen_X2 is <159
    LOADI R3, #159

hline_skip_right_clip:
    ; R1 - screen Y (0-84)
    ; R2 - screen X_1 (0-159)
    ; R3 - screen X_2 (0-159)

    LOADI R4 #160
    LOADI R5 #0         ; y-counter
    LOADI R6 #0         ; x-counter
    LOADI R7 #0         ; VRAM pointer
    LOADI R8 #1
    LOADI R9 color_white
    LOADHI R9 color_white
    LOAD R9 R9

hline_skip_y:
    CMP R5 R1
    JEQ hline_skip_x
    ADD R7 R7 R4
    ADD R5 R5 R8
    JMP hline_skip_y

hline_skip_x:
    ADD   R7, R7, R2        ; VRAM = (Y * 160) + X1
    ADD   R6, R2, R0        ; R6 = X1

draw_hline_loop:
    STORE R7 R9

    CMP R6 R3               ; Have the game draw X2?
    JEQ abort_hline

    ADD R6 R6 R8
    ADD R7 R7 R8

    JMP draw_hline_loop

abort_hline:
    RET

draw_vline:
    LOADI  R4, camera_x
    LOADHI R4, camera_x
    LOAD R4 R4

    CMP R1 R4
    LOADI  R5 #0x04      ; Load FLAG_N mask (1 << 2).
    AND R5 R5 RC        ; Check if N-flag was set
    JNE    abort_vline  ; World_X < camera_x; N-flag was set
    
    LOADI  R4, camera_y
    LOADHI R4, camera_y
    LOAD R4 R4

    CMP R3 R4
    LOADI  R5 #0x04      ; Load FLAG_N mask (1 << 2).
    AND R5 R5 RC        ; Check if N-flag was set
    JNE    abort_vline  ; World_Y2 < camera_y; N-flag was set

    SUB R2, R2, R4         ; Screen_Y1 = World_Y1 - camera_y
    SUB R3, R3, R4         ; Screen_Y2 = World_Y2 - camera_y

    LOADI  R4, camera_x
    LOADHI R4, camera_x
    LOAD   R4, R4
    SUB    R1, R1, R4      ; Screen_X = World_X - camera_x

    LOADI R4, #160
    CMP   R1, R4
    LOADI R5, #0x04
    AND   R5, R5, RC
    JEQ   abort_vline      ; Screen_X is bigger then 160

; --- Clamp Screen_Y1 to 0 if its negative ---
    LOADI  R5, #0
    LOADHI R5, #0x8000
    AND    R4, R2, R5
    JEQ    vline_skip_top_clip  ; FLAG_Z was set meaning R2 isn't negative
    LOADI  R2, #0

vline_skip_top_clip:
    LOADI R4, #85
    CMP   R2, R4
    LOADI R5, #0x04
    AND   R5, R5, RC
    JEQ   abort_vline      ; Screen_Y1 is bigger then 85

    LOADI R4, #84
    CMP   R3, R4
    LOADI R5, #0x04
    AND   R5, R5, RC
    JNE   vline_skip_bottom_clip ; The Sreen_Y2 is smaller then 84
    LOADI R3, #84


vline_skip_bottom_clip:
    ; R1 - screen X (0-159)
    ; R2 - screen Y_1 (0-84)
    ; R3 - screen Y_2 (0-84)

    LOADI R4 #160
    LOADI R5 #0         ; y-counter
    LOADI R7 #0         ; VRAM pointer
    LOADI R8 #1
    LOADI R9 color_white
    LOADHI R9 color_white
    LOAD R9 R9

vline_skip_y:
    CMP R5 R2
    JEQ vline_skip_x
    ADD R7 R7 R4
    ADD R5 R5 R8
    JMP vline_skip_y

vline_skip_x:
    ADD   R7, R7, R1        ; VRAM = (Y * 160) + X1

draw_vline_loop:
    STORE R7 R9

    CMP R5 R3               ; Have the game draw Y2?
    JEQ abort_vline

    ADD R5 R5 R8
    ADD R7 R7 R4

    JMP draw_vline_loop

abort_vline:
    RET

draw_players:
    LOADI  R2, player_0_x
    LOADHI R2, player_0_x     ; R2 = Pointer to player coordinates table

    LOADI  R3, #1             ; Constant 1
    LOADI  RB, #22            ; RB = Total players counter (22)


draw_players_loop:
    LOAD   R4, R2             ; R4 = World_X
    ADD    R2, R2, R3
    LOAD   R5, R2             ; R5 = World_Y
    ADD    R2, R2, R3

    LOADI  R7, camera_y
    LOADHI R7, camera_y
    LOAD   R7, R7             ; R7 = camera_y

    LOADI  R8, camera_x
    LOADHI R8, camera_x
    LOAD   R8, R8             ; R8 = camera_x

    LOADI  RA, #16
    SUB    R7, R7, RA         ; camera_y - 16
    CMP    R5, R7
    LOADI  R9, #0x04          ; Load FLAG_N mask (1 << 2)
    AND    R9, R9, RC
    JNE    draw_players_loop_inc ; World_Y < camera_y - 16; N-flag was set
    
    ADD    R7, R7, RA         ; Restore camera_y

    LOADI  RA, #16
    SUB    R8, R8, RA         ; camera_x - 16
    CMP    R4, R8
    LOADI  R9, #0x04
    AND    R9, R9, RC
    JNE    draw_players_loop_inc ; World_X < camera_x - 16

    ADD    R8, R8, RA         ; Restore camera_x

    SUB    R4, R4, R8         ; R4 = Screen_X (World_X - camera_x)
    SUB    R5, R5, R7         ; R5 = Screen_Y (World_Y - camera_y)

    LOADI  R9, #160
    CMP    R4, R9
    LOADI  R9, #0x04
    AND    R9, R9, RC
    JEQ    draw_players_loop_inc ; Screen_X >= 160; N-flag wasn't set

    LOADI  R9, #85
    CMP    R5, R9
    LOADI  R9, #0x04
    AND    R9, R9, RC
    JEQ    draw_players_loop_inc ; Screen_Y >= 85; N-flag wasn't set

    LOADI  R1, spr_idle_00_w1
    LOADHI R1, spr_idle_00_w1    ; R1 = Pointer to sprite row 0
    LOADI  R7, #16            ; R7 = 16 rows to draw

    LOADI  RA, #0
    LOADHI RA, #0x8000          ; RA = 0x8000 (Sign bit mask)
    AND    RA, R5, RA
    JEQ    player_y_is_pos    ; If Z=1, Screen_Y >= 0

    ADD    R7, R7, R5         ; Remaining rows = 16 + Screen_Y
    LOADI  RA, #2
    LSL    R5, R5, RA         ; R5 = Screen_Y * 4
    SUB    R1, R1, R5         ; R1 += (-Screen_Y * 4)
    LOADI  R5, #0             ; Clamp Screen_Y to 0

player_y_is_pos:
    LOADI  RA, #12
    CMP    RB, RA             ; RB - 12
    LOADI  RA, #0x04
    AND    RA, RA, RC         ; Check N-Flag
    JNE    set_away_team      ; If N-Flag=1 (RB < 12), it's the away team

set_home_team:
    LOADI  RA, color_red      ; Get address of original Red
    LOADHI RA, color_red
    LOAD   RA, RA             ; RA = 0xF800
    JMP    update_palette

set_away_team:
    LOADI  RA, color_blue     ; Get address of Blue
    LOADHI RA, color_blue
    LOAD   RA, RA             ; RA = 0x03FF

update_palette:
    LOADI  R9, color_jersey       ; Target the red slot in the palette array
    LOADHI R9, color_jersey
    STORE  R9, RA             ; Overwrite the slot

    ADD    R6, R0, R0         ; R6 = VRAM pointer (0)
    ADD    R9, R0, R0         ; R9 = Y-counter (0)
    LOADI  R8, #160           ; Screen width

player_skip_y:
    CMP    R9, R5             ; Reached Screen_Y?
    JEQ    player_skip_x
    ADD    R6, R6, R8         ; VRAM += 160
    ADD    R9, R9, R3         ; Y-counter++
    JMP    player_skip_y

player_skip_x:
    ADD    R6, R6, R4         ; VRAM = (Screen_Y * 160) + Screen_X

    PUSH   R2
    PUSH   RB

draw_sprite_row:
    LOADI  RA, #85
    CMP    R5, RA
    LOADI  RA, #0x04
    AND    RA, RA, RC
    JEQ    done_player_sprite ; If Screen_Y >= 85

    LOADI  R9, #4             ; R9 = 4 words per row
    PUSH   R4                 ; Save starting Screen_X for this row

draw_sprite_word:
    LOAD   R8, R1             ; R8 = Current 16-bit word (holds 4 pixels)
    ADD    R1, R1, R3         ; Advance sprite pointer to next word (+1)
    LOADI  RB, #4             ; RB = 4 pixels in this word

draw_sprite_col:
    LOADI  RA, #12
    LSR    RA, R8, RA         ; RA = Top 4 bits
    JEQ    skip_sprite_pixel  ; LSR sets Z=1 if index is 0

    LOADI  R2, color_black
    LOADHI R2, color_black
    SUB    R2, R2, R3
    ADD    R2, R2, RA
    LOAD R2 R2

    LOADI  RA, #0
    LOADHI RA, #0x8000
    AND    RA, R4, RA         ; Check MSB of current X
    JNE    skip_sprite_pixel  ; If negative, pixel is off left edge

    LOADI  RA, #160
    CMP    R4, RA
    LOADI  RA, #0x04
    AND    RA, RA, RC
    JEQ    skip_sprite_pixel  ; If X >= 160, pixel is off right edge

    STORE  R6, R2

skip_sprite_pixel:
    LOADI  RA, #4
    LSL    R8, R8, RA       ; Now leftmost bit holds next bit
    ADD    R6, R6, R3       ; VRAM pointer++
    ADD    R4, R4, R3       ; Current X++
    SUB    RB, RB, R3       ; pixel in word counter--
    JNE    draw_sprite_col

    SUB    R9, R9, R3         ; Word-in-row counter--
    JNE    draw_sprite_word

    POP    R4

    LOADI  RA, #144   ;move VRAM pointer down 1 row and back 16 pixels
    ADD    R6, R6, RA

    ADD    R5, R5, R3     ; Screen_Y++
    SUB    R7, R7, R3     ; Row counter--;
    JNE    draw_sprite_row

done_player_sprite:
    POP    RB
    POP    R2

draw_players_loop_inc:
    SUB    RB, RB, R3         ; players_remaining--
    JNE    draw_players_loop

    RET