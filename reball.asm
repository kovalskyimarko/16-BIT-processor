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

    ; LEFT GOAL METASPRITE (16x48)
    ; White frame on the right side, net tapers left

    ; --- LEFT TOP (Segment 1 of 3) ---
    spr_goal_left_top_00_w1 .int16 = #0x0000
    spr_goal_left_top_00_w2 .int16 = #0x3333
    spr_goal_left_top_00_w3 .int16 = #0x2222
    spr_goal_left_top_00_w4 .int16 = #0x2211
    spr_goal_left_top_01_w1 .int16 = #0x0000
    spr_goal_left_top_01_w2 .int16 = #0x0333
    spr_goal_left_top_01_w3 .int16 = #0x2222
    spr_goal_left_top_01_w4 .int16 = #0x2211
    spr_goal_left_top_02_w1 .int16 = #0x0000
    spr_goal_left_top_02_w2 .int16 = #0x0033
    spr_goal_left_top_02_w3 .int16 = #0x0000
    spr_goal_left_top_02_w4 .int16 = #0x0001
    spr_goal_left_top_03_w1 .int16 = #0x0000
    spr_goal_left_top_03_w2 .int16 = #0x0033
    spr_goal_left_top_03_w3 .int16 = #0x0000
    spr_goal_left_top_03_w4 .int16 = #0x0001
    spr_goal_left_top_04_w1 .int16 = #0x0000
    spr_goal_left_top_04_w2 .int16 = #0x0330
    spr_goal_left_top_04_w3 .int16 = #0x0000
    spr_goal_left_top_04_w4 .int16 = #0x0001
    spr_goal_left_top_05_w1 .int16 = #0x0000
    spr_goal_left_top_05_w2 .int16 = #0x0330
    spr_goal_left_top_05_w3 .int16 = #0x0000
    spr_goal_left_top_05_w4 .int16 = #0x0001
    spr_goal_left_top_06_w1 .int16 = #0x0000
    spr_goal_left_top_06_w2 .int16 = #0x0330
    spr_goal_left_top_06_w3 .int16 = #0x0000
    spr_goal_left_top_06_w4 .int16 = #0x0001
    spr_goal_left_top_07_w1 .int16 = #0x0000
    spr_goal_left_top_07_w2 .int16 = #0x0330
    spr_goal_left_top_07_w3 .int16 = #0x0000
    spr_goal_left_top_07_w4 .int16 = #0x0001
    spr_goal_left_top_08_w1 .int16 = #0x0000
    spr_goal_left_top_08_w2 .int16 = #0x0330
    spr_goal_left_top_08_w3 .int16 = #0x0000
    spr_goal_left_top_08_w4 .int16 = #0x0001
    spr_goal_left_top_09_w1 .int16 = #0x0000
    spr_goal_left_top_09_w2 .int16 = #0x0330
    spr_goal_left_top_09_w3 .int16 = #0x0000
    spr_goal_left_top_09_w4 .int16 = #0x0001
    spr_goal_left_top_10_w1 .int16 = #0x0000
    spr_goal_left_top_10_w2 .int16 = #0x0330
    spr_goal_left_top_10_w3 .int16 = #0x0000
    spr_goal_left_top_10_w4 .int16 = #0x0001
    spr_goal_left_top_11_w1 .int16 = #0x0000
    spr_goal_left_top_11_w2 .int16 = #0x0330
    spr_goal_left_top_11_w3 .int16 = #0x0000
    spr_goal_left_top_11_w4 .int16 = #0x0001
    spr_goal_left_top_12_w1 .int16 = #0x0000
    spr_goal_left_top_12_w2 .int16 = #0x0330
    spr_goal_left_top_12_w3 .int16 = #0x0000
    spr_goal_left_top_12_w4 .int16 = #0x0001
    spr_goal_left_top_13_w1 .int16 = #0x0000
    spr_goal_left_top_13_w2 .int16 = #0x0330
    spr_goal_left_top_13_w3 .int16 = #0x0000
    spr_goal_left_top_13_w4 .int16 = #0x0001
    spr_goal_left_top_14_w1 .int16 = #0x0000
    spr_goal_left_top_14_w2 .int16 = #0x0330
    spr_goal_left_top_14_w3 .int16 = #0x0000
    spr_goal_left_top_14_w4 .int16 = #0x0001
    spr_goal_left_top_15_w1 .int16 = #0x0000
    spr_goal_left_top_15_w2 .int16 = #0x0330
    spr_goal_left_top_15_w3 .int16 = #0x0000
    spr_goal_left_top_15_w4 .int16 = #0x0001

    ; --- LEFT MIDDLE (Segment 2 of 3) ---
    spr_goal_left_mid_00_w1 .int16 = #0x0000
    spr_goal_left_mid_00_w2 .int16 = #0x0330
    spr_goal_left_mid_00_w3 .int16 = #0x0000
    spr_goal_left_mid_00_w4 .int16 = #0x0001
    spr_goal_left_mid_01_w1 .int16 = #0x0000
    spr_goal_left_mid_01_w2 .int16 = #0x0330
    spr_goal_left_mid_01_w3 .int16 = #0x0000
    spr_goal_left_mid_01_w4 .int16 = #0x0001
    spr_goal_left_mid_02_w1 .int16 = #0x0000
    spr_goal_left_mid_02_w2 .int16 = #0x0330
    spr_goal_left_mid_02_w3 .int16 = #0x0000
    spr_goal_left_mid_02_w4 .int16 = #0x0001
    spr_goal_left_mid_03_w1 .int16 = #0x0000
    spr_goal_left_mid_03_w2 .int16 = #0x0330
    spr_goal_left_mid_03_w3 .int16 = #0x0000
    spr_goal_left_mid_03_w4 .int16 = #0x0001
    spr_goal_left_mid_04_w1 .int16 = #0x0000
    spr_goal_left_mid_04_w2 .int16 = #0x0330
    spr_goal_left_mid_04_w3 .int16 = #0x0000
    spr_goal_left_mid_04_w4 .int16 = #0x0001
    spr_goal_left_mid_05_w1 .int16 = #0x0000
    spr_goal_left_mid_05_w2 .int16 = #0x0330
    spr_goal_left_mid_05_w3 .int16 = #0x0000
    spr_goal_left_mid_05_w4 .int16 = #0x0001
    spr_goal_left_mid_06_w1 .int16 = #0x0000
    spr_goal_left_mid_06_w2 .int16 = #0x0330
    spr_goal_left_mid_06_w3 .int16 = #0x0000
    spr_goal_left_mid_06_w4 .int16 = #0x0001
    spr_goal_left_mid_07_w1 .int16 = #0x0000
    spr_goal_left_mid_07_w2 .int16 = #0x0330
    spr_goal_left_mid_07_w3 .int16 = #0x0000
    spr_goal_left_mid_07_w4 .int16 = #0x0001
    spr_goal_left_mid_08_w1 .int16 = #0x0000
    spr_goal_left_mid_08_w2 .int16 = #0x0330
    spr_goal_left_mid_08_w3 .int16 = #0x0000
    spr_goal_left_mid_08_w4 .int16 = #0x0001
    spr_goal_left_mid_09_w1 .int16 = #0x0000
    spr_goal_left_mid_09_w2 .int16 = #0x0330
    spr_goal_left_mid_09_w3 .int16 = #0x0000
    spr_goal_left_mid_09_w4 .int16 = #0x0001
    spr_goal_left_mid_10_w1 .int16 = #0x0000
    spr_goal_left_mid_10_w2 .int16 = #0x0330
    spr_goal_left_mid_10_w3 .int16 = #0x0000
    spr_goal_left_mid_10_w4 .int16 = #0x0001
    spr_goal_left_mid_11_w1 .int16 = #0x0000
    spr_goal_left_mid_11_w2 .int16 = #0x0330
    spr_goal_left_mid_11_w3 .int16 = #0x0000
    spr_goal_left_mid_11_w4 .int16 = #0x0001
    spr_goal_left_mid_12_w1 .int16 = #0x0000
    spr_goal_left_mid_12_w2 .int16 = #0x0330
    spr_goal_left_mid_12_w3 .int16 = #0x0000
    spr_goal_left_mid_12_w4 .int16 = #0x0001
    spr_goal_left_mid_13_w1 .int16 = #0x0000
    spr_goal_left_mid_13_w2 .int16 = #0x0330
    spr_goal_left_mid_13_w3 .int16 = #0x0000
    spr_goal_left_mid_13_w4 .int16 = #0x0001
    spr_goal_left_mid_14_w1 .int16 = #0x0000
    spr_goal_left_mid_14_w2 .int16 = #0x0330
    spr_goal_left_mid_14_w3 .int16 = #0x0000
    spr_goal_left_mid_14_w4 .int16 = #0x0001
    spr_goal_left_mid_15_w1 .int16 = #0x0000
    spr_goal_left_mid_15_w2 .int16 = #0x0330
    spr_goal_left_mid_15_w3 .int16 = #0x0000
    spr_goal_left_mid_15_w4 .int16 = #0x0001

    ; --- LEFT BOTTOM (Segment 3 of 3) ---
    spr_goal_left_bot_00_w1 .int16 = #0x0000
    spr_goal_left_bot_00_w2 .int16 = #0x0330
    spr_goal_left_bot_00_w3 .int16 = #0x0000
    spr_goal_left_bot_00_w4 .int16 = #0x0001
    spr_goal_left_bot_01_w1 .int16 = #0x0000
    spr_goal_left_bot_01_w2 .int16 = #0x0330
    spr_goal_left_bot_01_w3 .int16 = #0x0000
    spr_goal_left_bot_01_w4 .int16 = #0x0001
    spr_goal_left_bot_02_w1 .int16 = #0x0000
    spr_goal_left_bot_02_w2 .int16 = #0x0330
    spr_goal_left_bot_02_w3 .int16 = #0x0000
    spr_goal_left_bot_02_w4 .int16 = #0x0001
    spr_goal_left_bot_03_w1 .int16 = #0x0000
    spr_goal_left_bot_03_w2 .int16 = #0x0330
    spr_goal_left_bot_03_w3 .int16 = #0x0000
    spr_goal_left_bot_03_w4 .int16 = #0x0001
    spr_goal_left_bot_04_w1 .int16 = #0x0000
    spr_goal_left_bot_04_w2 .int16 = #0x0330
    spr_goal_left_bot_04_w3 .int16 = #0x0000
    spr_goal_left_bot_04_w4 .int16 = #0x0001
    spr_goal_left_bot_05_w1 .int16 = #0x0000
    spr_goal_left_bot_05_w2 .int16 = #0x0330
    spr_goal_left_bot_05_w3 .int16 = #0x0000
    spr_goal_left_bot_05_w4 .int16 = #0x0001
    spr_goal_left_bot_06_w1 .int16 = #0x0000
    spr_goal_left_bot_06_w2 .int16 = #0x0330
    spr_goal_left_bot_06_w3 .int16 = #0x0000
    spr_goal_left_bot_06_w4 .int16 = #0x0001
    spr_goal_left_bot_07_w1 .int16 = #0x0000
    spr_goal_left_bot_07_w2 .int16 = #0x0330
    spr_goal_left_bot_07_w3 .int16 = #0x0000
    spr_goal_left_bot_07_w4 .int16 = #0x0001
    spr_goal_left_bot_08_w1 .int16 = #0x0000
    spr_goal_left_bot_08_w2 .int16 = #0x0330
    spr_goal_left_bot_08_w3 .int16 = #0x0000
    spr_goal_left_bot_08_w4 .int16 = #0x0001
    spr_goal_left_bot_09_w1 .int16 = #0x0000
    spr_goal_left_bot_09_w2 .int16 = #0x0330
    spr_goal_left_bot_09_w3 .int16 = #0x0000
    spr_goal_left_bot_09_w4 .int16 = #0x0001
    spr_goal_left_bot_10_w1 .int16 = #0x0000
    spr_goal_left_bot_10_w2 .int16 = #0x0330
    spr_goal_left_bot_10_w3 .int16 = #0x0000
    spr_goal_left_bot_10_w4 .int16 = #0x0001
    spr_goal_left_bot_11_w1 .int16 = #0x0000
    spr_goal_left_bot_11_w2 .int16 = #0x0330
    spr_goal_left_bot_11_w3 .int16 = #0x0000
    spr_goal_left_bot_11_w4 .int16 = #0x0001
    spr_goal_left_bot_12_w1 .int16 = #0x0000
    spr_goal_left_bot_12_w2 .int16 = #0x0033
    spr_goal_left_bot_12_w3 .int16 = #0x0000
    spr_goal_left_bot_12_w4 .int16 = #0x0001
    spr_goal_left_bot_13_w1 .int16 = #0x0000
    spr_goal_left_bot_13_w2 .int16 = #0x0033
    spr_goal_left_bot_13_w3 .int16 = #0x0000
    spr_goal_left_bot_13_w4 .int16 = #0x0001
    spr_goal_left_bot_14_w1 .int16 = #0x0000
    spr_goal_left_bot_14_w2 .int16 = #0x0333
    spr_goal_left_bot_14_w3 .int16 = #0x2222
    spr_goal_left_bot_14_w4 .int16 = #0x2211
    spr_goal_left_bot_15_w1 .int16 = #0x0000
    spr_goal_left_bot_15_w2 .int16 = #0x3333
    spr_goal_left_bot_15_w3 .int16 = #0x2222
    spr_goal_left_bot_15_w4 .int16 = #0x2211

    ; RIGHT GOAL METASPRITE (16x48)
    ; White frame on the left side, net tapers right

    ; --- RIGHT TOP (Segment 1 of 3) ---
    spr_goal_right_top_00_w1 .int16 = #0x1122
    spr_goal_right_top_00_w2 .int16 = #0x2222
    spr_goal_right_top_00_w3 .int16 = #0x3333
    spr_goal_right_top_00_w4 .int16 = #0x0000
    spr_goal_right_top_01_w1 .int16 = #0x1122
    spr_goal_right_top_01_w2 .int16 = #0x2222
    spr_goal_right_top_01_w3 .int16 = #0x3330
    spr_goal_right_top_01_w4 .int16 = #0x0000
    spr_goal_right_top_02_w1 .int16 = #0x1000
    spr_goal_right_top_02_w2 .int16 = #0x0000
    spr_goal_right_top_02_w3 .int16 = #0x3300
    spr_goal_right_top_02_w4 .int16 = #0x0000
    spr_goal_right_top_03_w1 .int16 = #0x1000
    spr_goal_right_top_03_w2 .int16 = #0x0000
    spr_goal_right_top_03_w3 .int16 = #0x3300
    spr_goal_right_top_03_w4 .int16 = #0x0000
    spr_goal_right_top_04_w1 .int16 = #0x1000
    spr_goal_right_top_04_w2 .int16 = #0x0000
    spr_goal_right_top_04_w3 .int16 = #0x0330
    spr_goal_right_top_04_w4 .int16 = #0x0000
    spr_goal_right_top_05_w1 .int16 = #0x1000
    spr_goal_right_top_05_w2 .int16 = #0x0000
    spr_goal_right_top_05_w3 .int16 = #0x0330
    spr_goal_right_top_05_w4 .int16 = #0x0000
    spr_goal_right_top_06_w1 .int16 = #0x1000
    spr_goal_right_top_06_w2 .int16 = #0x0000
    spr_goal_right_top_06_w3 .int16 = #0x0330
    spr_goal_right_top_06_w4 .int16 = #0x0000
    spr_goal_right_top_07_w1 .int16 = #0x1000
    spr_goal_right_top_07_w2 .int16 = #0x0000
    spr_goal_right_top_07_w3 .int16 = #0x0330
    spr_goal_right_top_07_w4 .int16 = #0x0000
    spr_goal_right_top_08_w1 .int16 = #0x1000
    spr_goal_right_top_08_w2 .int16 = #0x0000
    spr_goal_right_top_08_w3 .int16 = #0x0330
    spr_goal_right_top_08_w4 .int16 = #0x0000
    spr_goal_right_top_09_w1 .int16 = #0x1000
    spr_goal_right_top_09_w2 .int16 = #0x0000
    spr_goal_right_top_09_w3 .int16 = #0x0330
    spr_goal_right_top_09_w4 .int16 = #0x0000
    spr_goal_right_top_10_w1 .int16 = #0x1000
    spr_goal_right_top_10_w2 .int16 = #0x0000
    spr_goal_right_top_10_w3 .int16 = #0x0330
    spr_goal_right_top_10_w4 .int16 = #0x0000
    spr_goal_right_top_11_w1 .int16 = #0x1000
    spr_goal_right_top_11_w2 .int16 = #0x0000
    spr_goal_right_top_11_w3 .int16 = #0x0330
    spr_goal_right_top_11_w4 .int16 = #0x0000
    spr_goal_right_top_12_w1 .int16 = #0x1000
    spr_goal_right_top_12_w2 .int16 = #0x0000
    spr_goal_right_top_12_w3 .int16 = #0x0330
    spr_goal_right_top_12_w4 .int16 = #0x0000
    spr_goal_right_top_13_w1 .int16 = #0x1000
    spr_goal_right_top_13_w2 .int16 = #0x0000
    spr_goal_right_top_13_w3 .int16 = #0x0330
    spr_goal_right_top_13_w4 .int16 = #0x0000
    spr_goal_right_top_14_w1 .int16 = #0x1000
    spr_goal_right_top_14_w2 .int16 = #0x0000
    spr_goal_right_top_14_w3 .int16 = #0x0330
    spr_goal_right_top_14_w4 .int16 = #0x0000
    spr_goal_right_top_15_w1 .int16 = #0x1000
    spr_goal_right_top_15_w2 .int16 = #0x0000
    spr_goal_right_top_15_w3 .int16 = #0x0330
    spr_goal_right_top_15_w4 .int16 = #0x0000

    ; --- RIGHT MIDDLE (Segment 2 of 3) ---
    spr_goal_right_mid_00_w1 .int16 = #0x1000
    spr_goal_right_mid_00_w2 .int16 = #0x0000
    spr_goal_right_mid_00_w3 .int16 = #0x0330
    spr_goal_right_mid_00_w4 .int16 = #0x0000
    spr_goal_right_mid_01_w1 .int16 = #0x1000
    spr_goal_right_mid_01_w2 .int16 = #0x0000
    spr_goal_right_mid_01_w3 .int16 = #0x0330
    spr_goal_right_mid_01_w4 .int16 = #0x0000
    spr_goal_right_mid_02_w1 .int16 = #0x1000
    spr_goal_right_mid_02_w2 .int16 = #0x0000
    spr_goal_right_mid_02_w3 .int16 = #0x0330
    spr_goal_right_mid_02_w4 .int16 = #0x0000
    spr_goal_right_mid_03_w1 .int16 = #0x1000
    spr_goal_right_mid_03_w2 .int16 = #0x0000
    spr_goal_right_mid_03_w3 .int16 = #0x0330
    spr_goal_right_mid_03_w4 .int16 = #0x0000
    spr_goal_right_mid_04_w1 .int16 = #0x1000
    spr_goal_right_mid_04_w2 .int16 = #0x0000
    spr_goal_right_mid_04_w3 .int16 = #0x0330
    spr_goal_right_mid_04_w4 .int16 = #0x0000
    spr_goal_right_mid_05_w1 .int16 = #0x1000
    spr_goal_right_mid_05_w2 .int16 = #0x0000
    spr_goal_right_mid_05_w3 .int16 = #0x0330
    spr_goal_right_mid_05_w4 .int16 = #0x0000
    spr_goal_right_mid_06_w1 .int16 = #0x1000
    spr_goal_right_mid_06_w2 .int16 = #0x0000
    spr_goal_right_mid_06_w3 .int16 = #0x0330
    spr_goal_right_mid_06_w4 .int16 = #0x0000
    spr_goal_right_mid_07_w1 .int16 = #0x1000
    spr_goal_right_mid_07_w2 .int16 = #0x0000
    spr_goal_right_mid_07_w3 .int16 = #0x0330
    spr_goal_right_mid_07_w4 .int16 = #0x0000
    spr_goal_right_mid_08_w1 .int16 = #0x1000
    spr_goal_right_mid_08_w2 .int16 = #0x0000
    spr_goal_right_mid_08_w3 .int16 = #0x0330
    spr_goal_right_mid_08_w4 .int16 = #0x0000
    spr_goal_right_mid_09_w1 .int16 = #0x1000
    spr_goal_right_mid_09_w2 .int16 = #0x0000
    spr_goal_right_mid_09_w3 .int16 = #0x0330
    spr_goal_right_mid_09_w4 .int16 = #0x0000
    spr_goal_right_mid_10_w1 .int16 = #0x1000
    spr_goal_right_mid_10_w2 .int16 = #0x0000
    spr_goal_right_mid_10_w3 .int16 = #0x0330
    spr_goal_right_mid_10_w4 .int16 = #0x0000
    spr_goal_right_mid_11_w1 .int16 = #0x1000
    spr_goal_right_mid_11_w2 .int16 = #0x0000
    spr_goal_right_mid_11_w3 .int16 = #0x0330
    spr_goal_right_mid_11_w4 .int16 = #0x0000
    spr_goal_right_mid_12_w1 .int16 = #0x1000
    spr_goal_right_mid_12_w2 .int16 = #0x0000
    spr_goal_right_mid_12_w3 .int16 = #0x0330
    spr_goal_right_mid_12_w4 .int16 = #0x0000
    spr_goal_right_mid_13_w1 .int16 = #0x1000
    spr_goal_right_mid_13_w2 .int16 = #0x0000
    spr_goal_right_mid_13_w3 .int16 = #0x0330
    spr_goal_right_mid_13_w4 .int16 = #0x0000
    spr_goal_right_mid_14_w1 .int16 = #0x1000
    spr_goal_right_mid_14_w2 .int16 = #0x0000
    spr_goal_right_mid_14_w3 .int16 = #0x0330
    spr_goal_right_mid_14_w4 .int16 = #0x0000
    spr_goal_right_mid_15_w1 .int16 = #0x1000
    spr_goal_right_mid_15_w2 .int16 = #0x0000
    spr_goal_right_mid_15_w3 .int16 = #0x0330
    spr_goal_right_mid_15_w4 .int16 = #0x0000

    ; --- RIGHT BOTTOM (Segment 3 of 3) ---
    spr_goal_right_bot_00_w1 .int16 = #0x1000
    spr_goal_right_bot_00_w2 .int16 = #0x0000
    spr_goal_right_bot_00_w3 .int16 = #0x0330
    spr_goal_right_bot_00_w4 .int16 = #0x0000
    spr_goal_right_bot_01_w1 .int16 = #0x1000
    spr_goal_right_bot_01_w2 .int16 = #0x0000
    spr_goal_right_bot_01_w3 .int16 = #0x0330
    spr_goal_right_bot_01_w4 .int16 = #0x0000
    spr_goal_right_bot_02_w1 .int16 = #0x1000
    spr_goal_right_bot_02_w2 .int16 = #0x0000
    spr_goal_right_bot_02_w3 .int16 = #0x0330
    spr_goal_right_bot_02_w4 .int16 = #0x0000
    spr_goal_right_bot_03_w1 .int16 = #0x1000
    spr_goal_right_bot_03_w2 .int16 = #0x0000
    spr_goal_right_bot_03_w3 .int16 = #0x0330
    spr_goal_right_bot_03_w4 .int16 = #0x0000
    spr_goal_right_bot_04_w1 .int16 = #0x1000
    spr_goal_right_bot_04_w2 .int16 = #0x0000
    spr_goal_right_bot_04_w3 .int16 = #0x0330
    spr_goal_right_bot_04_w4 .int16 = #0x0000
    spr_goal_right_bot_05_w1 .int16 = #0x1000
    spr_goal_right_bot_05_w2 .int16 = #0x0000
    spr_goal_right_bot_05_w3 .int16 = #0x0330
    spr_goal_right_bot_05_w4 .int16 = #0x0000
    spr_goal_right_bot_06_w1 .int16 = #0x1000
    spr_goal_right_bot_06_w2 .int16 = #0x0000
    spr_goal_right_bot_06_w3 .int16 = #0x0330
    spr_goal_right_bot_06_w4 .int16 = #0x0000
    spr_goal_right_bot_07_w1 .int16 = #0x1000
    spr_goal_right_bot_07_w2 .int16 = #0x0000
    spr_goal_right_bot_07_w3 .int16 = #0x0330
    spr_goal_right_bot_07_w4 .int16 = #0x0000
    spr_goal_right_bot_08_w1 .int16 = #0x1000
    spr_goal_right_bot_08_w2 .int16 = #0x0000
    spr_goal_right_bot_08_w3 .int16 = #0x0330
    spr_goal_right_bot_08_w4 .int16 = #0x0000
    spr_goal_right_bot_09_w1 .int16 = #0x1000
    spr_goal_right_bot_09_w2 .int16 = #0x0000
    spr_goal_right_bot_09_w3 .int16 = #0x0330
    spr_goal_right_bot_09_w4 .int16 = #0x0000
    spr_goal_right_bot_10_w1 .int16 = #0x1000
    spr_goal_right_bot_10_w2 .int16 = #0x0000
    spr_goal_right_bot_10_w3 .int16 = #0x0330
    spr_goal_right_bot_10_w4 .int16 = #0x0000
    spr_goal_right_bot_11_w1 .int16 = #0x1000
    spr_goal_right_bot_11_w2 .int16 = #0x0000
    spr_goal_right_bot_11_w3 .int16 = #0x0330
    spr_goal_right_bot_11_w4 .int16 = #0x0000
    spr_goal_right_bot_12_w1 .int16 = #0x1000
    spr_goal_right_bot_12_w2 .int16 = #0x0000
    spr_goal_right_bot_12_w3 .int16 = #0x3300
    spr_goal_right_bot_12_w4 .int16 = #0x0000
    spr_goal_right_bot_13_w1 .int16 = #0x1000
    spr_goal_right_bot_13_w2 .int16 = #0x0000
    spr_goal_right_bot_13_w3 .int16 = #0x3300
    spr_goal_right_bot_13_w4 .int16 = #0x0000
    spr_goal_right_bot_14_w1 .int16 = #0x1122
    spr_goal_right_bot_14_w2 .int16 = #0x2222
    spr_goal_right_bot_14_w3 .int16 = #0x3330
    spr_goal_right_bot_14_w4 .int16 = #0x0000
    spr_goal_right_bot_15_w1 .int16 = #0x1122
    spr_goal_right_bot_15_w2 .int16 = #0x2222
    spr_goal_right_bot_15_w3 .int16 = #0x3333
    spr_goal_right_bot_15_w4 .int16 = #0x0000

    ; --- BALL texture ---
    ; Row 00: Empty padding
    spr_ball_00_w1 .int16 = #0x0000
    spr_ball_00_w2 .int16 = #0x0000
    spr_ball_00_w3 .int16 = #0x0000
    spr_ball_00_w4 .int16 = #0x0000

    ; Row 01: Empty padding
    spr_ball_01_w1 .int16 = #0x0000
    spr_ball_01_w2 .int16 = #0x0000
    spr_ball_01_w3 .int16 = #0x0000
    spr_ball_01_w4 .int16 = #0x0000

    ; Row 02: Empty padding
    spr_ball_02_w1 .int16 = #0x0000
    spr_ball_02_w2 .int16 = #0x0000
    spr_ball_02_w3 .int16 = #0x0000
    spr_ball_02_w4 .int16 = #0x0000

    ; Row 03: Empty padding
    spr_ball_03_w1 .int16 = #0x0000
    spr_ball_03_w2 .int16 = #0x0000
    spr_ball_03_w3 .int16 = #0x0000
    spr_ball_03_w4 .int16 = #0x0000

    ; Row 04: Top curve (..222..)
    spr_ball_04_w1 .int16 = #0x0000
    spr_ball_04_w2 .int16 = #0x0002
    spr_ball_04_w3 .int16 = #0x2200
    spr_ball_04_w4 .int16 = #0x0000

    ; Row 05: Upper corner panels (.22122.)
    spr_ball_05_w1 .int16 = #0x0000
    spr_ball_05_w2 .int16 = #0x0022
    spr_ball_05_w3 .int16 = #0x1220
    spr_ball_05_w4 .int16 = #0x0000

    ; Row 06: Upper white band (2111112)
    spr_ball_06_w1 .int16 = #0x0000
    spr_ball_06_w2 .int16 = #0x0211
    spr_ball_06_w3 .int16 = #0x1112
    spr_ball_06_w4 .int16 = #0x0000

    ; Row 07: Center spot (2112112)
    spr_ball_07_w1 .int16 = #0x0000
    spr_ball_07_w2 .int16 = #0x0211
    spr_ball_07_w3 .int16 = #0x2112
    spr_ball_07_w4 .int16 = #0x0000

    ; Row 08: Lower white band (2111112)
    spr_ball_08_w1 .int16 = #0x0000
    spr_ball_08_w2 .int16 = #0x0211
    spr_ball_08_w3 .int16 = #0x1112
    spr_ball_08_w4 .int16 = #0x0000

    ; Row 09: Lower corner panels (.22122.)
    spr_ball_09_w1 .int16 = #0x0000
    spr_ball_09_w2 .int16 = #0x0022
    spr_ball_09_w3 .int16 = #0x1220
    spr_ball_09_w4 .int16 = #0x0000

    ; Row 10: Bottom curve (..222..)
    spr_ball_10_w1 .int16 = #0x0000
    spr_ball_10_w2 .int16 = #0x0002
    spr_ball_10_w3 .int16 = #0x2200
    spr_ball_10_w4 .int16 = #0x0000

    ; Row 11: Empty padding
    spr_ball_11_w1 .int16 = #0x0000
    spr_ball_11_w2 .int16 = #0x0000
    spr_ball_11_w3 .int16 = #0x0000
    spr_ball_11_w4 .int16 = #0x0000

    ; Row 12: Empty padding
    spr_ball_12_w1 .int16 = #0x0000
    spr_ball_12_w2 .int16 = #0x0000
    spr_ball_12_w3 .int16 = #0x0000
    spr_ball_12_w4 .int16 = #0x0000

    ; Row 13: Empty padding
    spr_ball_13_w1 .int16 = #0x0000
    spr_ball_13_w2 .int16 = #0x0000
    spr_ball_13_w3 .int16 = #0x0000
    spr_ball_13_w4 .int16 = #0x0000

    ; Row 14: Empty padding
    spr_ball_14_w1 .int16 = #0x0000
    spr_ball_14_w2 .int16 = #0x0000
    spr_ball_14_w3 .int16 = #0x0000
    spr_ball_14_w4 .int16 = #0x0000

    ; Row 15: Empty padding
    spr_ball_15_w1 .int16 = #0x0000
    spr_ball_15_w2 .int16 = #0x0000
    spr_ball_15_w3 .int16 = #0x0000
    spr_ball_15_w4 .int16 = #0x0000

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

    ; --- PITCH COLORS ---
    color_lgreen .int16 = #0x0740  ; Vibrant retro grass
    color_dgreen .int16 = #0x0520  ; Deep mower stripe grass
    color_white  .int16 = #0xFFFF  ; Pitch lines, the ball, UI text

    active_palette .int16 = #0x0000

    ; --- PLAYER & TEAM COLORS ---
    color_black   .int16 = #0x0000  ; Referee, boot details, text shadows
    color_skin    .int16 = #0xFEA0  ; Classic retro peach/skin tone
    color_jersey   .int16 = #0xF800 ; Jersey color red/blue
    color_white_t .int16 = #0xFFFF  ; White color for shorts
    color_brown   .int16 = #0x8200  ; For player hair and leather boots

    color_red     .int16 = #0xF800  ; Team 1 Jersey (Pure Red)
    color_blue   .int16 = #0x03FF  ;  Team 2 Jersey (Cyan)

    ; --- GOAL PALETTE ---
    goal_white  .int16 = #0xFFFF  ; Index 1: Goal Posts and Crossbar
    goal_net    .int16 = #0xAD55  ; Index 2: Light Grey Netting
    goal_shadow .int16 = #0x52AA  ; Index 3: Dark Grey Netting (Depth)

    ; --- BALL PALETTE ---
    ball_white  .int16 = #0xFFFF  ; Index 1: Goal Posts and Crossbar
    ball_black  .int16 = #0x0000  ; Index 2: Light Grey Netting

    ; --- OTHER COLORS ---
    color_yellow .int16 = #0xFFE0  ; Standard arcade color for "PRESS BUTTON TO START"

    ; --- DIFFERENT STATE VARIABLES ---
    game_state      .int16 = #1; 0 - End, 1 - kick off for home team, 2 - game, 3 - out, 4 - corner, 5 - goal, 6 - kick of enemy team, 7 - goal enemy team    
    ai_level   .int16 = #1  ; Level of ai 1 - easiest 2 - medium 3 - hardest
    red_score  .int16 = #0  ; Team red score
    blue_score .int16 = #0  ; Team blue score
    selected_p   .int16 = #9 ; Current selected player

    field_width  .int16 = #640  ; 4x screen width
    field_height .int16 = #340  ; 4x screen height

    camera_x     .int16 = #240  ; Start in the middle of the pitch
    camera_y     .int16 = #127

    ball_x       .int16 = #312
    ball_y       .int16 = #164

    ball_owner   .int16 = #255  ; 0-21 when someone dribbles
    last_owner   .int16 = #9    ; Last player (0-21) who touched the ball
    last_dir     .int16 = #255  ; 0 - Up, 1 - Down, 2 - Left, 3 - Right
    ball_vx      .int16 = #0
    ball_vy      .int16 = #0
    ball_timer   .int16 = #0    ; For how many framese ball will move
    tackle_cd    .int16 = #0    ; Cooldown frames after a tackle so ball doesn't ping-pong
    ai_tick      .int16 = #0    ; Toggles 0/1 so AI moves at half speed
    ai_wait      .int16 = #0    ; Short delay before Away AI takes a kickoff/out/corner

    ; --- PLAYERS DEFAULT POSITIONs
    ; HOME TEAM (4-3-3) - Left to Right
    
    d_player_0_x   .int16 = #25       ; P0  - GK (25, 168)
    d_player_0_y   .int16 = #168

    d_player_1_x   .int16 = #110      ; P1  - Left Back (110, 48)
    d_player_1_y   .int16 = #48
    d_player_2_x   .int16 = #110      ; P2  - Center Back Left (110, 128)
    d_player_2_y   .int16 = #128
    d_player_3_x   .int16 = #110      ; P3  - Center Back Right (110, 208)
    d_player_3_y   .int16 = #208
    d_player_4_x   .int16 = #110      ; P4  - Right Back (110, 288)
    d_player_4_y   .int16 = #288

    d_player_5_x   .int16 = #210      ; P5  - Left Midfielder (210, 88)
    d_player_5_y   .int16 = #88
    d_player_6_x   .int16 = #210      ; P6  - Central Midfielder (210, 168)
    d_player_6_y   .int16 = #168
    d_player_7_x   .int16 = #210      ; P7  - Right Midfielder (210, 248)
    d_player_7_y   .int16 = #248

    d_player_8_x   .int16 = #295      ; P8  - Left Winger (295, 72)
    d_player_8_y   .int16 = #72
    d_player_9_x   .int16 = #279      ; P9  - Center Forward (295, 168)
    d_player_9_y   .int16 = #168
    d_player_10_x  .int16 = #295      ; P10 - Right Winger (295, 264)
    d_player_10_y  .int16 = #264

    ; AWAY TEAM (4-3-3) - Right to Left (Mirrored across X = 320)
    d_player_11_x  .int16 = #345      ; P11 - Left Winger (345, 72)
    d_player_11_y  .int16 = #72
    d_player_12_x  .int16 = #345      ; P12 - Center Forward (345, 168)
    d_player_12_y  .int16 = #168
    d_player_13_x  .int16 = #345      ; P13 - Right Winger (345, 264)
    d_player_13_y  .int16 = #264

    d_player_14_x  .int16 = #430      ; P14 - Left Midfielder (430, 88)
    d_player_14_y  .int16 = #88
    d_player_15_x  .int16 = #430      ; P15 - Central Midfielder (430, 168)
    d_player_15_y  .int16 = #168
    d_player_16_x  .int16 = #430      ; P16 - Right Midfielder (430, 248)
    d_player_16_y  .int16 = #248

    d_player_17_x  .int16 = #530      ; P17 - Left Back (530, 48)
    d_player_17_y  .int16 = #48
    d_player_18_x  .int16 = #530      ; P18 - Center Back Left (530, 128)
    d_player_18_y  .int16 = #128
    d_player_19_x  .int16 = #530      ; P19 - Center Back Right (530, 208)
    d_player_19_y  .int16 = #208
    d_player_20_x  .int16 = #530      ; P20 - Right Back (530, 288)
    d_player_20_y  .int16 = #288

    d_player_21_x  .int16 = #615      ; P21 - GK (615, 168)
    d_player_21_y  .int16 = #168

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
    player_9_x   .int16 = #320      ; P9  - Center Forward (295, 168)
    player_9_y   .int16 = #160
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
    ; Reset last_dir = 255 at the start of every frame
    LOADI  R1, last_dir
    LOADHI R1, last_dir
    LOADI  R2, #255
    STORE  R1, R2

    LOADI R1, update_ball_logic
    LOADHI R1, update_ball_logic
    CALL R1

    LOADI R1, reset_positions
    LOADHI R1, reset_positions
    CALL R1

    LOADI R1, check_for_ball_collision
    LOADHI R1, check_for_ball_collision
    CALL R1

    LOADI R1, home_t_ai
    LOADHI R1, home_t_ai
    CALL R1

    LOADI R1, away_t_ai
    LOADHI R1, away_t_ai
    CALL R1

    LOADI R1, update_camera
    LOADHI R1, update_camera
    CALL R1

    LOADI  R1, draw_pitch
    LOADHI R1, draw_pitch
    CALL   R1

    LOADI R2, draw_players
    LOADHI R2, draw_players
    CALL R2

    LOADI R1, draw_scores
    LOADHI R1, draw_scores
    CALL R1

    LOADI R1, check_end
    LOADHI R1, check_end
    CALL R1

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

check_actions:
    LOADI R3 #0xFF01
    LOADHI R3 #0xFF01
    LOAD R3 R3

    LOADI R4 #0x04
    LOADHI R4 #0x04
    AND R4 R4 R3
    JNE press_k

    LOADI R4 #0x02
    LOADHI R4 #0x02
    AND R4 R4 R3
    JNE press_l

    LOADI R4 #0x01
    LOADHI R4 #0x01
    AND R4 R4 R3
    JNE press_p

    JMP draw_loop

press_k:
    LOADI R1 ball_owner
    LOADHI R1 ball_owner
    LOAD R5 R1

    LOADI R2 selected_p
    LOADHI R2 selected_p
    LOAD R2 R2
    CMP  R5 R2
    JEQ  press_k_allowed

    ; Also allow kicking when Away CM (player 15) is taking an out (3) or corner (4)
    LOADI R2 #15
    CMP  R5 R2
    JEQ  press_k_allowed

    ; Also allow kicking when Away CF (player 12) is taking a kickoff (6)
    LOADI R2 #12
    CMP  R5 R2
    JNE  draw_loop

press_k_allowed:
    LOADI R2 #255
    STORE R1 R2                ; ball_owner = 255

    LOADI R1 ball_timer
    LOADHI R1 ball_timer
    LOADI R2 #45
    STORE R1 R2                ; pass timer = 45

    LOADI R4 #3                ; pass speed = 3
    JMP kick_dispatch

press_l:
    LOADI R1 ball_owner
    LOADHI R1 ball_owner
    LOAD R5 R1

    LOADI R2 selected_p
    LOADHI R2 selected_p
    LOAD R2 R2
    CMP  R5 R2
    JEQ  press_l_allowed

    ; Also allow kicking when Away CM (player 15) is taking an out (3) or corner (4)
    LOADI R2 #15
    CMP  R5 R2
    JEQ  press_l_allowed

    ; Also allow kicking when Away CF (player 12) is taking a kickoff (6)
    LOADI R2 #12
    CMP  R5 R2
    JNE  draw_loop

press_l_allowed:
    LOADI R2 #255
    STORE R1 R2                ; ball_owner = 255

    LOADI R1 ball_timer
    LOADHI R1 ball_timer
    LOADI R2 #50
    STORE R1 R2                ; shot timer = 50

    LOADI R4 #4                ; shot speed = 4

kick_dispatch:
    ; set live game state
    LOADI R1 game_state
    LOADHI R1 game_state
    LOADI R2 #2
    STORE R1 R2

    LOADI R2 last_dir
    LOADHI R2 last_dir
    LOAD R2 R2

    LOADI R3 #0
    CMP R2 R3
    JEQ add_up_vy

    LOADI R3 #1
    CMP R2 R3
    JEQ add_down_vy

    LOADI R3 #2
    CMP R2 R3
    JEQ add_left_vx

    LOADI R3 #3
    CMP R2 R3
    JEQ add_right_vx

    ; default kick direction if idle
    LOADI R2 ball_y
    LOADHI R2 ball_y
    LOAD R2 R2
    LOADI R3 #20
    CMP R2 R3
    LOADI RA, #0x04
    AND RA, RA, RC
    JNE add_down_vy

    LOADI R3 #320
    LOADHI R3 #320
    CMP R2 R3
    LOADI RA, #0x04
    AND RA, RA, RC
    JEQ add_up_vy

    LOADI R2 last_owner
    LOADHI R2 last_owner
    LOAD R2 R2
    LOADI R3 #11
    CMP R2 R3
    LOADI RA, #0x04
    AND RA, RA, RC
    JEQ add_left_vx

    JMP add_right_vx

add_up_vy:
    SUB R4 R0 R4               ; vy = -speed
    LOADI R1 ball_vy
    LOADHI R1 ball_vy
    STORE R1 R4

    LOADI R1 ball_vx
    LOADHI R1 ball_vx
    STORE R1 R0
    JMP draw_loop

add_down_vy:
    LOADI R1 ball_vy
    LOADHI R1 ball_vy
    STORE R1 R4                ; vy = +speed

    LOADI R1 ball_vx
    LOADHI R1 ball_vx
    STORE R1 R0
    JMP draw_loop

add_left_vx:
    SUB R4 R0 R4               ; vx = -speed
    LOADI R1 ball_vx
    LOADHI R1 ball_vx
    STORE R1 R4

    LOADI R1 ball_vy
    LOADHI R1 ball_vy
    STORE R1 R0
    JMP draw_loop

add_right_vx:
    LOADI R1 ball_vx
    LOADHI R1 ball_vx
    STORE R1 R4                ; vx = +speed

    LOADI R1 ball_vy
    LOADHI R1 ball_vy
    STORE R1 R0
    JMP draw_loop

press_p:
    ; find closest home outfield player to ball
    LOADI R8 ball_x
    LOADHI R8 ball_x
    LOAD R8 R8                 ; R8 = ball_x

    LOADI R9 ball_y
    LOADHI R9 ball_y
    LOAD R9 R9                 ; R9 = ball_y

    LOADI R1 player_1_x
    LOADHI R1 player_1_x       ; start at player 1

    LOADI R3 #1                ; player index
    LOADI R4 #0x7FFF
    LOADHI R4 #0x7FFF          ; best distance
    LOADI R5 #9                ; best player

press_p_loop:
    ; dx = |player_x - ball_x|
    LOAD R6 R1
    SUB R7 R6 R8
    LOADI RA #0x04
    AND RA RA RC
    JEQ press_p_dx_ok
    SUB R7 R8 R6
press_p_dx_ok:
    ADD RB R7 R0               ; RB = dx

    ; dy = |player_y - ball_y|
    LOADI R7 #1
    ADD R6 R1 R7
    LOAD R6 R6
    SUB R7 R6 R9
    LOADI RA #0x04
    AND RA RA RC
    JEQ press_p_dy_ok
    SUB R7 R9 R6
press_p_dy_ok:
    ADD RB RB R7               ; dist = dx + dy

    ; check best distance
    CMP RB R4
    LOADI RA #0x04
    AND RA RA RC
    JEQ press_p_next
    ADD R4 RB R0
    ADD R5 R3 R0

press_p_next:
    LOADI R7 #2
    ADD R1 R1 R7               ; next player
    LOADI R7 #1
    ADD R3 R3 R7
    LOADI RA #11
    CMP R3 RA
    JNE press_p_loop

    LOADI R1 selected_p
    LOADHI R1 selected_p
    STORE R1 R5
    JMP draw_loop

move_w:
    ; Update last_dir = 0 (Up) so player can aim during restarts
    LOADI R4 last_dir
    LOADHI R4 last_dir
    LOADI R5 #0
    STORE R4 R5

    ; Only move during live play (game_state == 2)
    LOADI R4 game_state
    LOADHI R4 game_state
    LOAD R4 R4
    LOADI R5 #2
    CMP R4 R5
    JNE check_actions

    LOADI RB #1
    LOADI R5 #2

    LOADI R7 #0                ; 2 - counter
    LOADI R8 #0                ; player index counter

    LOADI R9 selected_p
    LOADHI R9 selected_p
    LOAD R9 R9

    LOADI RA player_0_x
    LOADHI RA player_0_x

go_to_selected_player_w:
    CMP R8 R9
    JEQ move_w_end

    ADD R7 R7 RB
    CMP R7 R5
    JNE go_to_selected_player_w
    ADD R7 R0 R0
    ADD R8 R8 RB
    JMP go_to_selected_player_w

move_w_end:
    ADD RA RA R8
    ADD RA RA R8               ; 2 words per player (x, y)
    ADD RA RA RB               ; +1 offset for player_y
    LOAD R7 RA

    ; Clamp player Y to top of field (Y >= 2)
    LOADI R5 #2
    CMP R7 R5
    LOADI R4 #0x04
    AND R4 R4 RC
    JNE check_actions

    LOADI R4 #1
    SUB R7 R7 R4
    STORE RA R7

    ; Check for selected_p == ball_owner
    LOADI R5 ball_owner
    LOADHI R5 ball_owner
    LOAD R5 R5
    CMP R9 R5
    JNE move_w_end_without_ball

    LOADI R5 ball_x
    LOADHI R5 ball_x
    
    LOADI R6 player_0_x
    LOADHI R6 player_0_x
    ADD R6 R6 R8
    ADD R6 R6 R8               ; 2 words per player (points to player_x)
    LOAD R6 R6                 ; Load actual player_x value
    STORE R5 R6

    LOADI R5 ball_y
    LOADHI R5 ball_y
    LOADI R4 #9
    SUB R7 R7 R4               ; ball_y = player_y - 9 (in front when moving Up)
    STORE R5 R7

move_w_end_without_ball:
    JMP check_actions

move_s:
    ; Update last_dir = 1 (Down) so player can aim during restarts
    LOADI R4 last_dir
    LOADHI R4 last_dir
    LOADI R5 #1
    STORE R4 R5

    ; Only move during live play (game_state == 2)
    LOADI R4 game_state
    LOADHI R4 game_state
    LOAD R4 R4
    LOADI R5 #2
    CMP R4 R5
    JNE check_actions

    LOADI RB #1
    LOADI R5 #2

    LOADI R7 #0                ; 2 - counter
    LOADI R8 #0                ; player index counter

    LOADI R9 selected_p
    LOADHI R9 selected_p
    LOAD R9 R9

    LOADI RA player_0_x
    LOADHI RA player_0_x

go_to_selected_player_s:
    CMP R8 R9
    JEQ move_s_end

    ADD R7 R7 RB
    CMP R7 R5
    JNE go_to_selected_player_s
    ADD R7 R0 R0
    ADD R8 R8 RB
    JMP go_to_selected_player_s

move_s_end:
    ADD RA RA R8
    ADD RA RA R8               ; 2 words per player (x, y)
    ADD RA RA RB               ; +1 offset for player_y
    LOAD R7 RA

    ; Clamp player Y to bottom of field (Y < 324, i.e. field_height 340 - sprite 16)
    LOADI R5 #324
    LOADHI R5 #324
    CMP R7 R5
    LOADI R4 #0x04
    AND R4 R4 RC
    JEQ check_actions

    LOADI R4 #1
    ADD R7 R7 R4
    STORE RA R7

    ; Check for selected_p == ball_owner
    LOADI R5 ball_owner
    LOADHI R5 ball_owner
    LOAD R5 R5
    CMP R9 R5
    JNE move_s_end_without_ball

    LOADI R5 ball_x
    LOADHI R5 ball_x

    LOADI R6 player_0_x
    LOADHI R6 player_0_x
    ADD R6 R6 R8
    ADD R6 R6 R8               ; 2 words per player (points to player_x)
    LOAD R6 R6                 ; Load actual player_x value
    STORE R5 R6

    LOADI R5 ball_y
    LOADHI R5 ball_y
    LOADI R4 #9
    ADD R7 R7 R4               ; ball_y = player_y + 9 (at feet when moving Down)
    STORE R5 R7

move_s_end_without_ball:
    JMP check_actions

move_a:
    ; Update last_dir = 2 (Left) so player can aim during restarts
    LOADI R4 last_dir
    LOADHI R4 last_dir
    LOADI R5 #2
    STORE R4 R5

    ; Only move during live play (game_state == 2)
    LOADI R4 game_state
    LOADHI R4 game_state
    LOAD R4 R4
    LOADI R5 #2
    CMP R4 R5
    JNE check_actions

    LOADI RB #1
    LOADI R5 #2

    LOADI R7 #0                ; 2 - counter
    LOADI R8 #0                ; player index counter

    LOADI R9 selected_p
    LOADHI R9 selected_p
    LOAD R9 R9

    LOADI RA player_0_x
    LOADHI RA player_0_x

go_to_selected_player_a:
    CMP R8 R9
    JEQ move_a_end

    ADD R7 R7 RB
    CMP R7 R5
    JNE go_to_selected_player_a
    ADD R7 R0 R0
    ADD R8 R8 RB
    JMP go_to_selected_player_a

move_a_end:
    ADD RA RA R8
    ADD RA RA R8               ; 2 words per player (points to player_x)
    LOAD R7 RA

    ; Clamp player X to left of field (X >= 2)
    LOADI R5 #2
    CMP R7 R5
    LOADI R4 #0x04
    AND R4 R4 RC
    JNE check_actions

    LOADI R4 #1
    SUB R7 R7 R4
    STORE RA R7

    ; Check for selected_p == ball_owner
    LOADI R5 ball_owner
    LOADHI R5 ball_owner
    LOAD R5 R5
    CMP R9 R5
    JNE move_a_end_without_ball

    LOADI R5 ball_x
    LOADHI R5 ball_x
    LOADI R4 #7
    SUB R7 R7 R4               ; ball_x = player_x - 7 (at left foot)
    STORE R5 R7

    LOADI R5 ball_y
    LOADHI R5 ball_y

    LOADI R6 player_0_x
    LOADHI R6 player_0_x
    ADD R6 R6 R8
    ADD R6 R6 R8               ; 2 words per player
    ADD R6 R6 RB               ; +1 offset for player_y
    LOAD R6 R6                 ; Load actual player_y value
    LOADI R4 #5
    ADD R6 R6 R4               ; ball_y = player_y + 5 (ground level by boots)
    STORE R5 R6

move_a_end_without_ball:
    JMP check_actions

move_d:
    ; Update last_dir = 3 (Right) so player can aim during restarts
    LOADI R4 last_dir
    LOADHI R4 last_dir
    LOADI R5 #3
    STORE R4 R5

    ; Only move during live play (game_state == 2)
    LOADI R4 game_state
    LOADHI R4 game_state
    LOAD R4 R4
    LOADI R5 #2
    CMP R4 R5
    JNE check_actions

    LOADI RB #1
    LOADI R5 #2

    LOADI R7 #0                ; 2 - counter
    LOADI R8 #0                ; player index counter

    LOADI R9 selected_p
    LOADHI R9 selected_p
    LOAD R9 R9

    LOADI RA player_0_x
    LOADHI RA player_0_x

go_to_selected_player_d:
    CMP R8 R9
    JEQ move_d_end

    ADD R7 R7 RB
    CMP R7 R5
    JNE go_to_selected_player_d
    ADD R7 R0 R0
    ADD R8 R8 RB
    JMP go_to_selected_player_d

move_d_end:
    ADD RA RA R8
    ADD RA RA R8               ; 2 words per player (points to player_x)
    LOAD R7 RA

    ; Clamp player X to right of field (X < 624, i.e. field_width 640 - sprite 16)
    LOADI R5 #624
    LOADHI R5 #624
    CMP R7 R5
    LOADI R4 #0x04
    AND R4 R4 RC
    JEQ check_actions

    LOADI R4 #1
    ADD R7 R7 R4
    STORE RA R7

    ; Check for selected_p == ball_owner
    LOADI R5 ball_owner
    LOADHI R5 ball_owner
    LOAD R5 R5
    CMP R9 R5
    JNE move_d_end_without_ball

    LOADI R5 ball_x
    LOADHI R5 ball_x
    LOADI R4 #6
    ADD R7 R7 R4               ; ball_x = player_x + 6 (at right foot)
    STORE R5 R7

    LOADI R5 ball_y
    LOADHI R5 ball_y

    LOADI R6 player_0_x
    LOADHI R6 player_0_x
    ADD R6 R6 R8
    ADD R6 R6 R8               ; 2 words per player
    ADD R6 R6 RB               ; +1 offset for player_y
    LOAD R6 R6                 ; Load actual player_y value
    LOADI R4 #5
    ADD R6 R6 R4               ; ball_y = player_y + 5 (ground level by boots)
    STORE R5 R6

move_d_end_without_ball:
    JMP check_actions

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
    LOADI R3, #90             ; R3 = World X End
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

    LOADI R1, #90             ; R1 = World X
    LOADI R2, #80             ; R2 = World Y Start
    LOADI R3, #260            ; R3 = World Y End
    LOADHI R3, #260
    LOADI R4, draw_vline
    LOADHI R4, draw_vline
    CALL R4

    LOADI R1, #260            ; R1 = World Y
    LOADHI R1, #260
    LOADI R2, #20              ; R2 = World X Start
    LOADI R3, #90             ; R3 = World X End
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

    LOADI R1, #80             ; R1 = World Y
    LOADI R2, #560            ; R2 = World X Start
    LOADHI R2, #560
    LOADI R3, #630            ; R3 = World X End
    LOADHI R3, #630
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

    LOADI R1, #560            ; R1 = World X
    LOADHI R1, #560
    LOADI R2, #80             ; R2 = World Y Start
    LOADI R3, #260            ; R3 = World Y End
    LOADHI R3, #260
    LOADI R4, draw_vline
    LOADHI R4, draw_vline
    CALL R4

    LOADI R1, #260            ; R1 = World Y
    LOADHI R1, #260
    LOADI R2, #560            ; R2 = World X Start
    LOADHI R2, #560
    LOADI R3, #630            ; R3 = World X End
    LOADHI R3, #630
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

draw_inner_penalty_box:
    LOADI R1, #130             ; R1 = World Y
    LOADI R2, #20              ; R2 = World X Start
    LOADI R3, #50             ; R3 = World X End
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

    LOADI R1, #50             ; R1 = World X
    LOADI R2, #130             ; R2 = World Y Start
    LOADI R3, #200            ; R3 = World Y End
    LOADHI R3, #200
    LOADI R4, draw_vline
    LOADHI R4, draw_vline
    CALL R4

    LOADI R1, #200            ; R1 = World Y
    LOADHI R1, #200
    LOADI R2, #20              ; R2 = World X Start
    LOADI R3, #50             ; R3 = World X End
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

    LOADI R1, #130             ; R1 = World Y
    LOADI R2, #600            ; R2 = World X Start
    LOADHI R2, #600
    LOADI R3, #630            ; R3 = World X End
    LOADHI R3, #630
    LOADI R4, draw_hline
    LOADHI R4, draw_hline
    CALL R4

    LOADI R1, #600            ; R1 = World X
    LOADHI R1, #600
    LOADI R2, #130             ; R2 = World Y Start
    LOADI R3, #200            ; R3 = World Y End
    LOADHI R3, #200
    LOADI R4, draw_vline
    LOADHI R4, draw_vline
    CALL R4

    LOADI R1, #200            ; R1 = World Y
    LOADHI R1, #200
    LOADI R2, #600            ; R2 = World X Start
    LOADHI R2, #600
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
    PUSH   R13                
    LOADI  R2, player_0_x
    LOADHI R2, player_0_x     
    LOADI  R3, #1             
    LOADI  RB, #22            

draw_players_loop:
    LOAD   R4, R2             ; R4 = World_X
    ADD    R2, R2, R3
    LOAD   R5, R2             ; R5 = World_Y
    ADD    R2, R2, R3

    ; --- 1. Swap Jersey Color ---
    LOADI  RA, #12
    CMP    RB, RA             
    LOADI  RA, #0x04
    AND    RA, RA, RC         
    JNE    set_away_team      

set_home_team:
    LOADI  RA, color_red       
    LOADHI RA, color_red
    LOAD   RA, RA             
    JMP    update_palette
set_away_team:
    LOADI  RA, color_blue      
    LOADHI RA, color_blue
    LOAD   RA, RA             
update_palette:
    LOADI  R9, color_jersey   
    LOADHI R9, color_jersey
    STORE  R9, RA             

    LOADI  R9, active_palette
    LOADHI R9, active_palette
    LOADI  RA, color_black
    LOADHI RA, color_black
    STORE  R9, RA             

    PUSH   R2                 ; Save coordinate pointer
    PUSH   RB                 ; Save player counter

    LOADI  R1, spr_idle_00_w1
    LOADHI R1, spr_idle_00_w1
    LOADI  R7, draw_sprite
    LOADHI R7, draw_sprite
    CALL   R7 

    POP    RB                 ; Restore player counter
    POP    R2                 ; Restore coordinate pointer

    SUB    RB, RB, R3         ; Next player
    JNE    draw_players_loop

    POP    R13                ; RESTORE LR
    JMP draw_goals

draw_goals:
    PUSH   R13                ; Save LR

    ; Set active palette to goal colors
    LOADI  R9, active_palette
    LOADHI R9, active_palette
    LOADI  RA, goal_white
    LOADHI RA, goal_white
    STORE  R9, RA

    ; DRAW LEFT GOAL (3 segments stacked)
    
    ; Segment 1: TOP
    LOADI  R4, #0             ;  X = 0
    LOADI  R5, #139           ; Y = 139
    LOADHI R5, #139
    LOADI  R1, spr_goal_left_top_00_w1
    LOADHI R1, spr_goal_left_top_00_w1
    LOADI  R7, draw_sprite
    LOADHI R7, draw_sprite
    CALL   R7

    ; Segment 2: MIDDLE
    LOADI  R4, #0             ;  X = 0
    LOADI  R5, #155           ; Y = 155
    LOADHI R5, #155
    LOADI  R1, spr_goal_left_mid_00_w1
    LOADHI R1, spr_goal_left_mid_00_w1
    LOADI  R7, draw_sprite
    LOADHI R7, draw_sprite
    CALL   R7

    ; Segment 3: BOTTOM
    LOADI  R4, #0             ;  X = 0
    LOADI  R5, #171           ; Y = 171
    LOADHI R5, #171
    LOADI  R1, spr_goal_left_bot_00_w1
    LOADHI R1, spr_goal_left_bot_00_w1
    LOADI  R7, draw_sprite
    LOADHI R7, draw_sprite
    CALL   R7


    ; DRAW RIGHT GOAL (3 segments stacked)

    ; Segment 1: TOP
    LOADI  R4, #624           ;  X = 624
    LOADHI R4, #624
    LOADI  R5, #139           ; Y = 139
    LOADHI R5, #139
    LOADI  R1, spr_goal_right_top_00_w1
    LOADHI R1, spr_goal_right_top_00_w1
    LOADI  R7, draw_sprite
    LOADHI R7, draw_sprite
    CALL   R7

    ; Segment 2: MIDDLE
    LOADI  R4, #624           ;  X = 624
    LOADHI R4, #624
    LOADI  R5, #155           ; Y = 155
    LOADHI R5, #155
    LOADI  R1, spr_goal_right_mid_00_w1
    LOADHI R1, spr_goal_right_mid_00_w1
    LOADI  R7, draw_sprite
    LOADHI R7, draw_sprite
    CALL   R7

    ; Segment 3: BOTTOM
    LOADI  R4, #624           ;  X = 624
    LOADHI R4, #624
    LOADI  R5, #171           ; Y = 171
    LOADHI R5, #171
    LOADI  R1, spr_goal_right_bot_00_w1
    LOADHI R1, spr_goal_right_bot_00_w1
    LOADI  R7, draw_sprite
    LOADHI R7, draw_sprite
    CALL   R7
    JMP draw_ball

draw_ball:
    LOADI  R9, active_palette
    LOADHI R9, active_palette
    LOADI  RA, ball_white
    LOADHI RA, ball_white
    STORE  R9, RA

    LOADI  R4, ball_x
    LOADHI  R4, ball_x
    LOAD R4 R4
    LOADI  R5, ball_y
    LOADHI R5, ball_y
    LOAD R5 R5
    LOADI  R1, spr_ball_00_w1
    LOADHI R1, spr_ball_00_w1
    LOADI  R7, draw_sprite
    LOADHI R7, draw_sprite
    CALL   R7
    POP    R13
    RET

draw_sprite:
    LOADI  R3, #1             ; Guarantee R3 is always 1 for math
    
    ; --- 1. Camera Clipping ---
    LOADI  R7, camera_y
    LOADHI R7, camera_y
    LOAD   R7, R7             

    LOADI  R8, camera_x
    LOADHI R8, camera_x
    LOAD   R8, R8             

    LOADI  RA, #16
    SUB    R7, R7, RA         
    CMP    R5, R7
    LOADI  R9, #0x04          
    AND    R9, R9, RC
    JNE    abort_draw_sprite  ; Abort this sprite if off screen
    
    ADD    R7, R7, RA         

    LOADI  RA, #16
    SUB    R8, R8, RA         
    CMP    R4, R8
    LOADI  R9, #0x04
    AND    R9, R9, RC
    JNE    abort_draw_sprite  

    ADD    R8, R8, RA         
    SUB    R4, R4, R8         ; Screen X
    SUB    R5, R5, R7         ; Screen Y

    LOADI  R9, #160
    CMP    R4, R9
    LOADI  R9, #0x04
    AND    R9, R9, RC
    JEQ    abort_draw_sprite  

    LOADI  R9, #85
    CMP    R5, R9
    LOADI  R9, #0x04
    AND    R9, R9, RC
    JEQ    abort_draw_sprite  

    LOADI  R7, #16            ; 16 rows to draw

    LOADI  RA, #0
    LOADHI RA, #0x8000        
    AND    RA, R5, RA
    JEQ    sprite_y_is_pos    

    ADD    R7, R7, R5         
    JEQ    abort_draw_sprite
    LOADI  RA, #2
    LSL    R5, R5, RA         
    SUB    R1, R1, R5         
    LOADI  R5, #0             

sprite_y_is_pos:    
    ADD    R6, R0, R0         ; VRAM = 0
    ADD    R9, R0, R0         ; Y-counter = 0
    LOADI  R8, #160           

sprite_skip_y:
    CMP    R9, R5             
    JEQ    sprite_skip_x
    ADD    R6, R6, R8         
    ADD    R9, R9, R3         
    JMP    sprite_skip_y

sprite_skip_x:
    ADD    R6, R6, R4         

draw_sprite_row:
    LOADI  RA, #85
    CMP    R5, RA
    LOADI  RA, #0x04
    AND    RA, RA, RC
    JEQ    abort_draw_sprite  

    LOADI  R9, #4             
    PUSH   R4                 ; Save starting Screen_X

draw_sprite_word:
    LOAD   R8, R1             
    ADD    R1, R1, R3         
    LOADI  RB, #4             

draw_sprite_col:
    LOADI  RA, #12
    LSR    RA, R8, RA         
    JEQ    skip_sprite_pixel  

    ; --- DYNAMIC PALETTE LOOKUP ---
    LOADI  R2, active_palette
    LOADHI R2, active_palette
    LOAD   R2, R2             ; Load the address of the current base color
    SUB    R2, R2, R3         ; Subtract 1
    ADD    R2, R2, RA         ; Add color index
    LOAD   R2, R2             ; R2 = Final 16-bit color

    LOADI  RA, #0
    LOADHI RA, #0x8000
    AND    RA, R4, RA         
    JNE    skip_sprite_pixel  

    LOADI  RA, #160
    CMP    R4, RA
    LOADI  RA, #0x04
    AND    RA, RA, RC
    JEQ    skip_sprite_pixel  

    STORE  R6, R2

skip_sprite_pixel:
    LOADI  RA, #4
    LSL    R8, R8, RA         
    ADD    R6, R6, R3         
    ADD    R4, R4, R3         
    SUB    RB, RB, R3         
    JNE    draw_sprite_col

    SUB    R9, R9, R3         
    JNE    draw_sprite_word

    POP    R4
    LOADI  RA, #144   
    ADD    R6, R6, RA
    ADD    R5, R5, R3         
    SUB    R7, R7, R3         
    JNE    draw_sprite_row

abort_draw_sprite:
    RET

update_ball_logic:
    LOADI R3 ball_x
    LOADHI R3 ball_x
    LOAD R5 R3

    LOADI R4 ball_y
    LOADHI R4 ball_y
    LOAD R6 R4

    LOADI R7 ball_timer
    LOADHI R7 ball_timer
    LOAD R8 R7
    CMP R8 R0
    JEQ update_ball_stop       ; If ball_timer == 0, reset velocity and check bounds

    LOADI R9 #1
    SUB R8 R8 R9
    STORE R7 R8                ; ball_timer--

    LOADI R1 ball_vx
    LOADHI R1 ball_vx
    LOAD R1 R1

    LOADI R2 ball_vy
    LOADHI R2 ball_vy
    LOAD R2 R2

    ADD R5 R5 R1
    ADD R6 R6 R2
    STORE R3 R5
    STORE R4 R6
    JMP check_ball_bounds

update_ball_stop:
    LOADI R1 ball_vx
    LOADHI R1 ball_vx
    STORE R1 R0
    LOADI R2 ball_vy
    LOADHI R2 ball_vy
    STORE R2 R0

check_ball_bounds:
    ; Only check out/corner during live play (game_state == 2)
    LOADI R1 game_state
    LOADHI R1 game_state
    LOAD R1 R1
    LOADI R2 #2
    CMP R1 R2
    JNE update_ball_end



    ; -- Check if there was a goal in the Home (left) goal -> Away team scores
    LOADI R1 #20        ; goal x line (same as left corner line)

    LOADI R7 #139       ; top y of goal mouth
    LOADI R8 #187       ; bottom y of goal mouth

    CMP R5 R1
    LOADI RA, #0x04
    AND   RA, RA, RC
    JEQ check_ball_bounds_continue  ; ball_x >= 20 -> not in left goal

    CMP R6 R7
    LOADI RA, #0x04
    AND   RA, RA, RC
    JNE check_ball_bounds_continue  ; ball_y < 139 -> above goal (corner)

    CMP R6 R8
    LOADI RA, #0x04
    AND   RA, RA, RC
    JEQ check_ball_bounds_continue  ; ball_y >= 187 -> below goal (corner)

    LOADI R1 #7
    LOADI R2 game_state
    LOADHI R2 game_state
    STORE R2 R1         ; game_state = 7 (goal for enemy team)

    LOADI R1 #1
    LOADI R2 blue_score
    LOADHI R2 blue_score
    LOAD R7 R2
    ADD R7 R7 R1
    STORE R2 R7         ; blue_score++

    JMP goal_scored

check_ball_bounds_continue:
    ; -- Check if there was a goal in the Away (right) goal -> Home team scores
    LOADI R1 #620
    LOADHI R1 #620      ; goal x line (same as right corner line)

    LOADI R7 #139       ; top y of goal mouth
    LOADI R8 #187       ; bottom y of goal mouth

    CMP R5 R1
    LOADI RA, #0x04
    AND   RA, RA, RC
    JNE check_ball_bounds_continue_c  ; ball_x < 620 -> not in right goal

    CMP R6 R7
    LOADI RA, #0x04
    AND   RA, RA, RC
    JNE check_ball_bounds_continue_c  ; ball_y < 139 -> above goal (corner)

    CMP R6 R8
    LOADI RA, #0x04
    AND   RA, RA, RC
    JEQ check_ball_bounds_continue_c  ; ball_y >= 187 -> below goal (corner)

    LOADI R1 #5
    LOADI R2 game_state
    LOADHI R2 game_state
    STORE R2 R1         ; game_state = 5 (goal for home team)

    LOADI R1 #1
    LOADI R2 red_score
    LOADHI R2 red_score
    LOAD R7 R2
    ADD R7 R7 R1
    STORE R2 R7         ; red_score++

goal_scored:
    ; Stop the ball and make it loose, then skip out/corner checks
    LOADI R1 ball_timer
    LOADHI R1 ball_timer
    STORE R1 R0
    LOADI R1 ball_vx
    LOADHI R1 ball_vx
    STORE R1 R0
    LOADI R1 ball_vy
    LOADHI R1 ball_vy
    STORE R1 R0
    LOADI R1 ball_owner
    LOADHI R1 ball_owner
    LOADI R2 #255
    STORE R1 R2
    RET

check_ball_bounds_continue_c:
    ; -- Check if the ball is out (top < 10 or bottom >= 330) ---
    LOADI R1 #10
    CMP R6 R1
    LOADI RA, #0x04
    AND   RA, RA, RC
    JNE set_out_top

    LOADI R1 #330
    LOADHI R1 #330
    CMP R6 R1
    LOADI RA, #0x04
    AND   RA, RA, RC
    JEQ set_out_bottom

    ; -- Check if the ball is corner (left < 20 or right >= 620) ---
    LOADI R1 #20
    CMP R5 R1
    LOADI RA, #0x04
    AND   RA, RA, RC
    JNE set_corner_left

    LOADI R1 #620
    LOADHI R1 #620
    CMP R5 R1
    LOADI RA, #0x04
    AND   RA, RA, RC
    JEQ set_corner_right

    RET

set_out_top:
    LOADI R6 #12               ; Place ball just inside top touchline
    STORE R4 R6
    JMP set_out

set_out_bottom:
    LOADI R6 #326              ; Place ball just inside bottom touchline
    LOADHI R6 #326
    STORE R4 R6

set_out:
    LOADI R1 #3
    LOADI R2 game_state
    LOADHI R2 game_state
    STORE R2 R1
    JMP teleport_restart_player

set_corner_left:
    LOADI R5 #22               ; Place ball at left corner X
    STORE R3 R5
    JMP set_corner_y

set_corner_right:
    LOADI R5 #618              ; Place ball at right corner X
    LOADHI R5 #618
    STORE R3 R5

set_corner_y:
    ; Snap ball_y to nearest corner (top = 12 if ball_y < 170, else bottom = 326)
    LOADI R1 #170
    LOADHI R1 #170
    CMP R6 R1
    LOADI RA, #0x04
    AND RA, RA, RC
    JNE set_corner_top_y
    LOADI R6 #326
    LOADHI R6 #326
    STORE R4 R6
    JMP set_corner

set_corner_top_y:
    LOADI R6 #12
    STORE R4 R6

set_corner:
    LOADI R1 #4
    LOADI R2 game_state
    LOADHI R2 game_state
    STORE R2 R1

teleport_restart_player:
    ; stop ball
    LOADI R1 ball_timer
    LOADHI R1 ball_timer
    STORE R1 R0
    LOADI R1 ball_vx
    LOADHI R1 ball_vx
    STORE R1 R0
    LOADI R1 ball_vy
    LOADHI R1 ball_vy
    STORE R1 R0

    ; last_owner < 11 -> away restart (player 15), else home restart (selected_p)
    LOADI R1 last_owner
    LOADHI R1 last_owner
    LOAD R2 R1
    LOADI R7 #11
    CMP R2 R7
    LOADI RA, #0x04
    AND RA, RA, RC
    JNE restart_away_team

    ; home restart
    LOADI R7 selected_p
    LOADHI R7 selected_p
    LOAD R7 R7
    JMP do_teleport_player

restart_away_team:
    LOADI R7 #15

do_teleport_player:
    LOADI R1 ball_owner
    LOADHI R1 ball_owner
    STORE R1 R7
    LOADI R1 last_owner
    LOADHI R1 last_owner
    STORE R1 R7

    ; place player at ball
    LOADI R1 player_0_x
    LOADHI R1 player_0_x
    ADD R1 R1 R7
    ADD R1 R1 R7
    STORE R1 R5                ; player_x = ball_x
    LOADI R2 #1
    ADD R1 R1 R2
    STORE R1 R6                ; player_y = ball_y

update_ball_end:
    RET

check_for_ball_collision:
    ; tackle cooldown
    LOADI R1 tackle_cd
    LOADHI R1 tackle_cd
    LOAD R2 R1
    CMP R2 R0
    JEQ check_ball_state_guard
    LOADI R3 #1
    SUB R2 R2 R3
    STORE R1 R2

check_ball_state_guard:
    ; lock owner on out/corner
    LOADI R1 game_state
    LOADHI R1 game_state
    LOAD R1 R1
    LOADI R2 #3
    CMP R1 R2
    JEQ check_ball_end_end
    LOADI R2 #4
    CMP R1 R2
    JEQ check_ball_end_end

    LOADI R1 player_0_x
    LOADHI R1 player_0_x

    LOADI R2 #1          ; 1 - constant
    LOADI R3 #0          ; player counter
    LOADI R4 #2          ; 2 - constant

    LOADI R5 ball_owner
    LOADHI R5 ball_owner
    LOAD RA R5
    PUSH RA              ; save prev owner
    LOADI RA #255
    STORE R5 RA          ; reset owner

    LOADI R6 #10         ; 10 - constant

    LOADI R8 ball_x
    LOADHI R8 ball_x
    LOAD R8 R8

    LOADI R9 ball_y
    LOADHI R9 ball_y
    LOAD R9 R9

check_for_ball_collision_loop:
    ; ignore kicker while ball is moving
    LOADI RA ball_timer
    LOADHI RA ball_timer
    LOAD RA RA
    CMP RA R0
    JEQ check_ball_cd_guard
    LOADI RA last_owner
    LOADHI RA last_owner
    LOAD RA RA
    CMP R3 RA
    JEQ check_ball_next_player_curr_x

check_ball_cd_guard:
    ; tackle cooldown check
    POP RB
    PUSH RB
    LOADI RA #255
    CMP RB RA
    JEQ check_ball_do_x
    LOADI RA tackle_cd
    LOADHI RA tackle_cd
    LOAD RA RA
    CMP RA R0
    JEQ check_ball_teammate_guard
    CMP R3 RB
    JNE check_ball_next_player_curr_x
    JMP check_ball_do_x

check_ball_teammate_guard:
    ; don't steal from teammate
    CMP R3 RB
    JEQ check_ball_do_x
    LOADI RA #11
    CMP RB RA
    LOADI RA #0x04
    AND RA RA RC
    JNE check_ball_home_owner

    LOADI RA #11
    CMP R3 RA
    LOADI RA #0x04
    AND RA RA RC
    JEQ check_ball_next_player_curr_x
    JMP check_ball_do_x

check_ball_home_owner:
    LOADI RA #11
    CMP R3 RA
    LOADI RA, #0x04
    AND   RA, RA, RC
    JNE   check_ball_next_player_curr_x

check_ball_do_x:
    ; pickup radius
    LOADI R6 #10

check_ball_use_r6:
    LOAD R7 R1           ; player_x
    ADD R7 R7 R6
    CMP R7 R8
    LOADI RA, #0x04
    AND   RA, RA, RC
    JNE   check_ball_next_player_curr_x

    SUB R7 R7 R6
    ADD RB R8 R6
    CMP RB R7
    LOADI RA, #0x04
    AND   RA, RA, RC
    JNE   check_ball_next_player_curr_x

    ADD R1 R1 R2
    LOAD R7 R1           ; player_y

    ADD R7 R7 R6
    CMP R7 R9
    LOADI RA, #0x04
    AND   RA, RA, RC
    JNE   check_ball_next_player_curr_y

    SUB R7 R7 R6
    ADD RB R9 R6
    CMP RB R7
    LOADI RA, #0x04
    AND   RA, RA, RC
    JNE   check_ball_next_player_curr_y

    STORE R5 R3          ; ball_owner = player
    LOADI RA last_owner
    LOADHI RA last_owner
    STORE RA R3
    LOADI RA ball_timer
    LOADHI RA ball_timer
    STORE RA R0          ; stop ball
    LOADI RA ball_vx
    LOADHI RA ball_vx
    STORE RA R0
    LOADI RA ball_vy
    LOADHI RA ball_vy
    STORE RA R0

    ; start tackle cooldown if taken
    POP RB
    PUSH RB
    CMP R3 RB
    JEQ check_ball_after_hit
    LOADI R7 #25
    LOADI RA tackle_cd
    LOADHI RA tackle_cd
    STORE RA R7

check_ball_after_hit:
    ; let away players tackle home owner
    LOADI RA #11
    CMP RB RA
    LOADI RA #0x04
    AND RA RA RC
    JEQ check_ball_end
    CMP R3 RB
    JEQ check_ball_next_player_curr_y
    JMP check_ball_end

check_ball_next_player_curr_x:
    ADD R1 R1 R4
    ADD R3 R3 R2
    LOADI RA #22
    CMP   R3 RA
    JEQ check_ball_end
    JMP check_for_ball_collision_loop
    

check_ball_next_player_curr_y:
    ADD R1 R1 R2
    ADD R3 R3 R2
    LOADI RA #22
    CMP   R3 RA
    JEQ check_ball_end
    JMP check_for_ball_collision_loop

check_ball_end:
    POP RA

    LOADI R1  ball_owner
    LOADHI R1 ball_owner
    LOAD R2 R1

    LOADI R3 #10
    CMP R3 R2
    LOADI RA, #0x04
    AND   RA, RA, RC
    JNE   check_ball_end_end
    
    LOADI R3 selected_p
    LOADHI R3 selected_p
    LOAD R4 R3
    CMP R4 R2
    JEQ check_ball_end_end

    STORE R3 R2

check_ball_end_end:
    RET

update_camera:
    LOADI R1 camera_x
    LOADHI R1 camera_x

    LOADI R2 camera_y
    LOADHI R2 camera_y

    ; Check if a player currently owns the ball
    LOADI R7 ball_owner
    LOADHI R7 ball_owner
    LOAD R7 R7
    LOADI R8 #255
    CMP R7 R8
    JEQ camera_target_ball

    LOADI R3 player_0_x
    LOADHI R3 player_0_x
    ADD R3 R3 R7
    ADD R3 R3 R7    ; 2 words per player (x, y)
    LOAD R4 R3      ; R4 = owner player_x
    LOADI R5 #1
    ADD R3 R3 R5
    LOAD R5 R3      ; R5 = owner player_y
    JMP camera_compute_bounds

camera_target_ball:
    LOADI R4 ball_x
    LOADHI R4 ball_x
    LOAD R4 R4      ; R4 = ball_x
    
    LOADI R5 ball_y
    LOADHI R5 ball_y
    LOAD R5 R5      ; R5 = ball_y

camera_compute_bounds:
    LOADI R6 #72    ; width of the screen / 2
    LOADI R7 #40    ; height of the screen / 2
    
    SUB R8 R4 R6
    LOADI RA, #0x04
    AND RA RA RC
    JNE clamp_x_min_camera
    LOADI RB #4
    CMP R8 RB
    LOADI RA, #0x04
    AND RA RA RC
    JEQ check_clamp_x_max_camera
clamp_x_min_camera:
    LOADI R8 #4
    JMP skip_clamp_x_camera

check_clamp_x_max_camera:
    LOADI RB #480
    LOADHI RB #480
    CMP R8 RB
    LOADI RA, #0x04
    AND RA RA RC
    JNE skip_clamp_x_camera
    LOADI R8 #480
    LOADHI R8 #480

skip_clamp_x_camera:
    ;  target camera_y = target_y - 40
    LOADI RA, #0x04
    AND RA RA RC
    JNE clamp_y_min_camera
    LOADI RB #4
    CMP R9 RB
    LOADI RA, #0x04
    AND RA RA RC
    JEQ check_clamp_y_max_camera
clamp_y_min_camera:
    LOADI R9 #4
    JMP skip_clamp_y_camera

check_clamp_y_max_camera:
    LOADI RB #255
    LOADHI RB #255
    CMP R9 RB
    LOADI RA, #0x04
    AND RA RA RC
    JNE skip_clamp_y_camera
    LOADI R9 #255
    LOADHI R9 #255

skip_clamp_y_camera:
    LOAD R6 R1      ; R6 = current camera_x
    LOADI RB #1
    CMP R6 R8
    JEQ smooth_x_done
    LOADI RA, #0x04
    AND RA RA RC
    JNE smooth_x_inc
    ; camera_x > target R8 -> decrement (up to 2 px)
    SUB R6 R6 RB
    CMP R6 R8
    JEQ smooth_x_done
    SUB R6 R6 RB
    JMP smooth_x_done
smooth_x_inc:
    ; camera_x < target R8 -> increment (up to 2 px)
    ADD R6 R6 RB
    CMP R6 R8
    JEQ smooth_x_done
    ADD R6 R6 RB
smooth_x_done:
    STORE R1 R6     ; store updated camera_x

    LOAD R7 R2      ; R7 = current camera_y
    CMP R7 R9
    JEQ smooth_y_done
    LOADI RA, #0x04
    AND RA RA RC
    JNE smooth_y_inc
    ; camera_y > target R9 -> decrement (up to 2 px)
    SUB R7 R7 RB
    CMP R7 R9
    JEQ smooth_y_done
    SUB R7 R7 RB
    JMP smooth_y_done
smooth_y_inc:
    ; camera_y < target R9 -> increment (up to 2 px)
    ADD R7 R7 RB
    CMP R7 R9
    JEQ smooth_y_done
    ADD R7 R7 RB
smooth_y_done:
    STORE R2 R7     ; store updated camera_y
    RET

reset_positions:
    LOADI R2 game_state
    LOADHI R2 game_state
    LOAD R2 R2

    LOADI R1 #5
    CMP R2 R1
    JEQ reset_positions_continue

    LOADI R1 #7
    CMP R2 R1
    JEQ reset_positions_continue
    RET

reset_positions_continue:
    LOADI R4 player_0_x
    LOADHI R4 player_0_x

    LOADI R5 d_player_0_x
    LOADHI R5 d_player_0_x

    LOADI R1 #1
    LOADI R2 #0      ; counter
    LOADI R3 #44     ; counter - limit

reset_positions_loop:
    LOAD R7 R5
    STORE R4 R7

    ADD R2 R2 R1
    ADD R5 R5 R1
    ADD R4 R4 R1
    CMP R2 R3
    JNE reset_positions_loop

    ; Ball back to the centre spot, stopped and loose
    LOADI R4 ball_x
    LOADHI R4 ball_x
    LOADI R7 #312
    LOADHI R7 #312
    STORE R4 R7

    LOADI R4 ball_y
    LOADHI R4 ball_y
    LOADI R7 #164
    STORE R4 R7

    LOADI R4 ball_timer
    LOADHI R4 ball_timer
    STORE R4 R0
    LOADI R4 ball_vx
    LOADHI R4 ball_vx
    STORE R4 R0
    LOADI R4 ball_vy
    LOADHI R4 ball_vy
    STORE R4 R0
    LOADI R4 ball_owner
    LOADHI R4 ball_owner
    LOADI R7 #255
    STORE R4 R7

    ; Control goes back to the Home centre forward
    LOADI R4 selected_p
    LOADHI R4 selected_p
    LOADI R7 #9
    STORE R4 R7

    ; Home scored (5) -> Away kicks off, Away scored (7) -> Home kicks off
    LOADI R2 game_state
    LOADHI R2 game_state
    LOAD R3 R2
    LOADI R1 #5
    CMP R3 R1
    JEQ reset_away_kickoff

reset_home_kickoff:
    ; Move player_12 (Home CF) onto the ball at (320, 160)
    LOADI R4 player_9_x
    LOADHI R4 player_9_x
    LOADI R7 #320
    LOADHI R7 #320
    STORE R4 R7
    LOADI R4 player_9_y
    LOADHI R4 player_9_y
    LOADI R7 #160
    STORE R4 R7

    LOADI R7 #9
    LOADI R4 last_owner
    LOADHI R4 last_owner
    STORE R4 R7

    LOADI R1 #1
    STORE R2 R1      ; game_state = 1 (Home kickoff)
    RET

reset_away_kickoff:
    ; Move player_9 (Home CF) back to his own half at (295, 168)
    LOADI R4 player_9_x
    LOADHI R4 player_9_x
    LOADI R7 #295
    LOADHI R7 #295
    STORE R4 R7
    LOADI R4 player_9_y
    LOADHI R4 player_9_y
    LOADI R7 #168
    STORE R4 R7

    ; Move player_12 (Away CF) onto the ball at (320, 160)
    LOADI R4 player_12_x
    LOADHI R4 player_12_x
    LOADI R7 #320
    LOADHI R7 #320
    STORE R4 R7
    LOADI R4 player_12_y
    LOADHI R4 player_12_y
    LOADI R7 #160
    STORE R4 R7

    LOADI R7 #12
    LOADI R4 ball_owner
    LOADHI R4 ball_owner
    STORE R4 R7
    LOADI R4 last_owner
    LOADHI R4 last_owner
    STORE R4 R7

    LOADI R1 #6
    STORE R2 R1      ; game_state = 6 (Away kickoff)
    RET

draw_scores:
    PUSH R13

    LOADI R1 red_score
    LOADHI R1 red_score
    LOAD R4 R1

    ; 1px black shadow at (X=69, Y=3) -> 3*160 + 69 = 549
    LOADI R2 color_black
    LOADHI R2 color_black
    LOAD R2 R2
    LOADI R6 #549
    LOADHI R6 #549
    LOADI R7 draw_font_digit
    LOADHI R7 draw_font_digit
    CALL R7

    ; Foreground in red at (X=68, Y=2) -> 2*160 + 68 = 388
    LOADI R1 red_score
    LOADHI R1 red_score
    LOAD R4 R1
    LOADI R2 color_red
    LOADHI R2 color_red
    LOAD R2 R2
    LOADI R6 #388
    LOADHI R6 #388
    LOADI R7 draw_font_digit
    LOADHI R7 draw_font_digit
    CALL R7

    LOADI R1 blue_score
    LOADHI R1 blue_score
    LOAD R4 R1

    ; 1px black shadow at (X=85, Y=3)
    LOADHI R2 color_black
    LOAD R2 R2
    LOADI R6 #565
    LOADHI R6 #565
    LOADI R7 draw_font_digit
    LOADHI R7 draw_font_digit
    CALL R7

    ; Foreground in blue at (X=84, Y=2)
    LOADHI R1 blue_score
    LOAD R4 R1
    LOADI R2 color_blue
    LOADHI R2 color_blue
    LOAD R2 R2
    LOADI R6 #404
    LOADHI R6 #404
    LOADI R7 draw_font_digit
    LOADHI R7 draw_font_digit
    CALL R7

    POP R13
    RET

draw_font_digit:
    LOADI R1 font_0_0
    LOADHI R1 font_0_0
    LOADI R3 #2
    LSL R5 R4 R3     ; R5 = digit * 4
    ADD R1 R1 R5     ; R1 = &font_{digit}_0

    LOADI R3 #1      ; constant 1
    LOADI R9 #4      ; 4 words per character

draw_font_word:
    LOAD R8 R1       ; R8 = 16-bit word (high byte = top row, low byte = bottom row)
    ADD R1 R1 R3
    LOADI R7 #2      ; 2 rows per word

draw_font_row:
    LOADI RB #8      ; 8 columns per row

draw_font_col:
    LOADI RA #15
    LSR RA R8 RA     ; Extract top bit (bit 15)
    JEQ skip_font_px
    STORE R6 R2      ; Draw pixel to VRAM

skip_font_px:
    ADD R8 R8 R8     ; Shift R8 left by 1 bit
    ADD R6 R6 R3     ; Next screen column
    SUB RB RB R3
    JNE draw_font_col

    LOADI RA #152    ; Advance VRAM to next row (160 - 8 = 152)
    ADD R6 R6 RA
    SUB R7 R7 R3
    JNE draw_font_row

    SUB R9 R9 R3
    JNE draw_font_word
    RET

check_end:
    LOADI R1 red_score
    LOADHI R1 red_score
    LOAD R1 R1

    LOADI R2 blue_score
    LOADHI R2 blue_score
    LOAD R2 R2

    LOADI R3 #3

    CMP R1 R3
    JEQ set_end

    CMP R2 R3
    JEQ set_end

    RET

set_end:
    LOADI R1 game_state
    LOADHI R1 game_state
    STORE R1 R0
    RET

home_t_ai:
    ;  ai_tick every frame so AI moves at 0.5x speed 
    LOADI R1 ai_tick
    LOADHI R1 ai_tick
    LOAD R2 R1
    LOADI R3 #1
    XOR R2 R2 R3
    STORE R1 R2
    CMP R2 R0
    JEQ home_ai_ret

    LOADI R1 game_state
    LOADHI R1 game_state
    LOAD R1 R1
    LOADI R2 #2
    CMP R1 R2
    JNE home_ai_ret

    ; Load ball_x (R8) and selected_p (R9)
    LOADI R8 ball_x
    LOADHI R8 ball_x
    LOAD R8 R8

    LOADI R9 selected_p
    LOADHI R9 selected_p
    LOAD R9 R9

    LOADI R1 player_0_x
    LOADHI R1 player_0_x
    LOADI R2 d_player_0_x
    LOADHI R2 d_player_0_x

    LOADI R3 #0                ; Start at player_0 (Home GK)

home_ai_loop:
    CMP R3 R0
    JNE home_ai_not_gk

    LOADI R4 ball_owner
    LOADHI R4 ball_owner
    LOAD R5 R4
    CMP R5 R0
    JNE home_ai_gk_guard

    LOADI R7 #255
    STORE R4 R7                ; ball_owner = 255
    LOADI R4 ball_timer
    LOADHI R4 ball_timer
    LOADI R7 #45
    STORE R4 R7                ; ball_timer = 45
    LOADI R4 ball_vx
    LOADHI R4 ball_vx
    LOADI R7 #3
    STORE R4 R7                ; ball_vx = +3 (clear Right)
    LOADI R4 ball_vy
    LOADHI R4 ball_vy
    STORE R4 R0
    JMP home_ai_next

home_ai_gk_guard:
    ; Home GK stays stationed at center of goal (25, 163) so top/bottom corners are open
    LOADI R6 #25
    LOADI R5 #163
    JMP home_ai_move_x

home_ai_not_gk:
    CMP R3 R9
    JEQ home_ai_next

    ; Default target_y (R5) = home lane d_player_y ([R2 + 1])
    LOADI R7 #1
    ADD R5 R2 R7
    LOAD R5 R5                 ; R5 = d_player_y

    ; Check if Home team (< 11) or Enemy team (>= 11) has possession
    LOADI R4 ball_owner
    LOADHI R4 ball_owner
    LOAD R4 R4
    LOADI R7 #255
    CMP R4 R7
    JNE home_ai_team_cmp
    LOADI R4 last_owner
    LOADHI R4 last_owner
    LOAD R4 R4

home_ai_team_cmp:
    LOADI R7 #11
    CMP R4 R7
    LOADI RA #0x04
    AND RA RA RC
    JEQ home_ai_enemy_ball     ; Possession >= 11 -> Enemy has the ball (defend)

    ; ATTACKING MODE (Home team has the ball)
    ;   1..4  = Defenders (CB/FB): target_x = ball_x - 140, clamped [110, 310]
    ;   5..7  = Midfielders (CM):  target_x = ball_x - 50,  clamped [160, 520]
    ;   8..10 = Forwards (FW):     target_x = ball_x + 15,  clamped [250, 590]
    LOADI RA #5
    CMP R3 RA
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_def

    LOADI RA #8
    CMP R3 RA
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_mid

    ; --- Forwards (8..10): move with the ball (ball_x + 15, clamped [250, 590]) ---
    LOADI R6 #15
    ADD R6 R8 R6               ; R6 = ball_x + 15
    LOADI R7 #250
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JEQ home_ai_fw_max
    LOADI R6 #250
home_ai_fw_max:
    LOADI R7 #590
    LOADHI R7 #590
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_move_x
    LOADI R6 #590
    LOADHI R6 #590
    JMP home_ai_move_x

home_ai_mid:
    ; --- Midfielders (5..7): slightly behind ball (ball_x - 50, clamped [160, 520]) ---
    LOADI R6 #50
    SUB R6 R8 R6               ; R6 = ball_x - 50
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_mid_min
    LOADI R7 #160
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JEQ home_ai_mid_max
home_ai_mid_min:
    LOADI R6 #160
    JMP home_ai_move_x
home_ai_mid_max:
    LOADI R7 #520
    LOADHI R7 #520
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_move_x
    LOADI R6 #520
    LOADHI R6 #520
    JMP home_ai_move_x

home_ai_def:
    ; --- Defenders (1..4): stay back (ball_x - 140) and never cross midline (clamped [110, 310]) ---
    LOADI R6 #140
    SUB R6 R8 R6               ; R6 = ball_x - 140
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_def_min
    LOADI R7 #110
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JEQ home_ai_def_max
home_ai_def_min:
    LOADI R6 #110
    JMP home_ai_move_x
home_ai_def_max:
    LOADI R7 #310
    LOADHI R7 #310
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_move_x
    LOADI R6 #310
    LOADHI R6 #310
    JMP home_ai_move_x

    ; DEFENDING MODE (Enemy team has the ball)
    ;   - Default: return to home position (d_player_x, d_player_y)
    ;   - If inside a 90x90 square around the ball (|px - bx| <= 45 and |py - by| <= 45),
    ;     press/tackle toward (ball_x, ball_y) (Defenders 1..4 only press in own half < 320)

home_ai_enemy_ball:
    LOAD R6 R2                 ; Default target_x (R6) = d_player_x (R5 is already d_player_y)

    ; Defenders (1..4) do not chase the ball past the midline (ball_x >= 320)
    LOADI RA #5
    CMP R3 RA
    LOADI RA #0x04
    AND RA RA RC
    JEQ home_ai_check_box
    LOADI R7 #320
    LOADHI R7 #320
    CMP R8 R7
    LOADI RA #0x04
    AND RA RA RC
    JEQ home_ai_move_x         ; ball_x >= 320 -> defender returns home

home_ai_check_box:
    ; Check |player_x - ball_x| <= 48
    LOAD R4 R1                 ; R4 = player_x
    LOADI RB #48
    ADD R7 R4 RB               ; R7 = player_x + 48
    CMP R7 R8                  ; (player_x + 48) - ball_x
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_move_x         ; player_x + 48 < ball_x -> outside box, return home

    ADD R7 R8 RB               ; R7 = ball_x + 48
    CMP R7 R4                  ; (ball_x + 48) - player_x
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_move_x         ; ball_x + 48 < player_x -> outside box, return home

    ; Check |player_y - ball_y| <= 48
    LOADI R7 #1
    ADD R4 R1 R7
    LOAD R4 R4                 ; R4 = player_y
    LOADI R7 ball_y
    LOADHI R7 ball_y
    LOAD R7 R7                 ; R7 = ball_y

    ADD RA R4 RB               ; RA = player_y + 48
    CMP RA R7                  ; (player_y + 48) - ball_y
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_move_x         ; player_y + 48 < ball_y -> outside box, return home

    ADD RA R7 RB               ; RA = ball_y + 48
    CMP RA R4                  ; (ball_y + 48) - player_y
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_move_x         ; ball_y + 48 < player_y -> outside box, return home

    ; Inside tackle square around ball -> cut ahead of ball if in front, else chase ball
    ADD R6 R8 R0               ; target_x (R6) = ball_x
    ADD R5 R7 R0               ; target_y (R5) = ball_y

    ; If defender is between ball and home goal (player_x < ball_x),  cut off (ball_x - 8)
    LOAD R4 R1
    CMP R4 R8
    LOADI RA #0x04
    AND RA RA RC
    JEQ home_ai_move_x         ; player_x >= ball_x -> chase ball directly
    LOADI RA #8
    SUB R6 R8 RA               ; cut ahead: target_x = ball_x - 8

home_ai_move_x:
    ; Step player_x ([R1]) toward target_x (R6) by 1 px 
    LOAD R4 R1                 ; R4 = current player_x
    LOADI R7 #1
    CMP R4 R6
    JEQ home_ai_move_y
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_inc_x
    SUB R4 R4 R7
    STORE R1 R4
    JMP home_ai_next
home_ai_inc_x:
    ADD R4 R4 R7
    STORE R1 R4
    JMP home_ai_next

home_ai_move_y:
    ; Step player_y ([R1 + 1]) toward target_y (R5) by 1 px
    LOADI R7 #1
    ADD R4 R1 R7               ; R4 = &player_y
    LOAD R6 R4                 ; R6 = current player_y
    CMP R6 R5
    JEQ home_ai_next
    LOADI RA #0x04
    AND RA RA RC
    JNE home_ai_inc_y
    SUB R6 R6 R7
    STORE R4 R6
    JMP home_ai_next
home_ai_inc_y:
    ADD R6 R6 R7
    STORE R4 R6

home_ai_next:
    LOADI R7 #2
    ADD R1 R1 R7               ; Next player_x
    ADD R2 R2 R7               ; Next d_player_x
    LOADI R7 #1
    ADD R3 R3 R7               ; player index++
    LOADI RA #11
    CMP R3 RA
    JNE home_ai_loop

home_ai_ret:
    RET

away_t_ai:
    ; Check if Away AI needs to take a kickoff (game_state == 6), out (3), or corner (4)
    LOADI R1 game_state
    LOADHI R1 game_state
    LOAD R1 R1

    LOADI R2 #6
    CMP R1 R2
    JEQ away_ai_restart

    LOADI R2 #3
    CMP R1 R2
    JEQ away_ai_check_restart_owner

    LOADI R2 #4
    CMP R1 R2
    JEQ away_ai_check_restart_owner

    ; Otherwise only run during live play (game_state == 2)
    LOADI R2 #2
    CMP R1 R2
    JNE away_ai_ret

    ; Reset ai_wait timer during live play
    LOADI R1 ai_wait
    LOADHI R1 ai_wait
    STORE R1 R0

    ; Move only on active ai_tick frames (0.5x speed so human can outrun defenders)
    LOADI R1 ai_tick
    LOADHI R1 ai_tick
    LOAD R2 R1
    CMP R2 R0
    JEQ away_ai_ret
    JMP away_ai_live

away_ai_check_restart_owner:
    ; For out (3) or corner (4), only auto-kick if an Away player (>= 11) is taking it
    LOADI R3 ball_owner
    LOADHI R3 ball_owner
    LOAD R3 R3
    LOADI R4 #11
    CMP R3 R4
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_ret            ; Home team owns the restart -> wait for human input

away_ai_restart:
    ; Wait 35 frames so the camera pans to the restart spot before Away AI kicks
    LOADI R1 ai_wait
    LOADHI R1 ai_wait
    LOAD R2 R1
    LOADI R3 #1
    ADD R2 R2 R3
    STORE R1 R2
    LOADI R3 #35
    CMP R2 R3
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_ret

    ; Reset ai_wait and transition to live play (game_state = 2)
    STORE R1 R0
    LOADI R1 game_state
    LOADHI R1 game_state
    LOADI R2 #2
    STORE R1 R2

    LOADI R1 ball_owner
    LOADHI R1 ball_owner
    LOADI R2 #255
    STORE R1 R2

    LOADI R1 ball_timer
    LOADHI R1 ball_timer
    LOADI R2 #30
    STORE R1 R2

    ; Kickoff (game_state == 6): always pass toward Home side (Left)
    LOADI R1 game_state
    LOADHI R1 game_state
    LOAD R1 R1
    LOADI R3 #6
    CMP R1 R3
    JEQ away_ai_kick_left

    ; Choose kick direction for throw-in / corner based on ball_y (top line -> Down, bottom line -> Up, else Left)
    LOADI R1 ball_y
    LOADHI R1 ball_y
    LOAD R2 R1

    LOADI R3 #20
    CMP R2 R3
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_kick_down

    LOADI R3 #320
    LOADHI R3 #320
    CMP R2 R3
    LOADI RA #0x04
    AND RA RA RC
    JEQ away_ai_kick_up

away_ai_kick_left:
    LOADI R4 #3
    SUB R4 R0 R4               ; vx = -3 (pass left toward Home half)
    LOADI R1 ball_vx
    LOADHI R1 ball_vx
    STORE R1 R4
    LOADI R1 ball_vy
    LOADHI R1 ball_vy
    STORE R1 R0
    RET

away_ai_kick_down:
    LOADI R4 #2
    LOADI R1 ball_vy
    LOADHI R1 ball_vy
    STORE R1 R4
    LOADI R1 ball_vx
    LOADHI R1 ball_vx
    STORE R1 R0
    RET

away_ai_kick_up:
    LOADI R4 #2
    SUB R4 R0 R4
    LOADI R1 ball_vy
    LOADHI R1 ball_vy
    STORE R1 R4
    LOADI R1 ball_vx
    LOADHI R1 ball_vx
    STORE R1 R0
    RET

away_ai_live:
    ; Load ball_x (R8) and ball_owner (R9)
    LOADI R8 ball_x
    LOADHI R8 ball_x
    LOAD R8 R8

    LOADI R9 ball_owner
    LOADHI R9 ball_owner
    LOAD R9 R9

    LOADI R1 player_11_x
    LOADHI R1 player_11_x
    LOADI R2 d_player_11_x
    LOADHI R2 d_player_11_x

    LOADI R3 #11               ; Start at player_11 (Away LW)

away_ai_loop:
    ; --- Special handling for Away Goalkeeper (player_21) ---
    LOADI RA #21
    CMP R3 RA
    JNE away_ai_not_gk

    ; If Away GK (player_21) has the ball, immediately clear/punt it Left upfield!
    CMP R3 R9
    JNE away_ai_gk_guard

    LOADI R4 ball_owner
    LOADHI R4 ball_owner
    LOADI R7 #255
    STORE R4 R7                ; ball_owner = 255
    LOADI R4 ball_timer
    LOADHI R4 ball_timer
    LOADI R7 #45
    STORE R4 R7                ; ball_timer = 45
    LOADI R7 #3
    SUB R7 R0 R7               ; R7 = -3 (clear Left)
    LOADI R4 ball_vx
    LOADHI R4 ball_vx
    STORE R4 R7
    LOADI R4 ball_vy
    LOADHI R4 ball_vy
    STORE R4 R0
    JMP away_ai_next

away_ai_gk_guard:
    ; Away GK stays stationed at center of goal (615, 163) so top/bottom corners are open to score!
    LOADI R6 #615
    LOADHI R6 #615
    LOADI R5 #163
    JMP away_ai_move_x

away_ai_not_gk:
    ; Check if this Away player (R3) currently owns the ball!
    CMP R3 R9
    JNE away_ai_off_ball

    ; BALL CARRIER (R3 == ball_owner): Dribble toward Home goal (20, 163) or Shoot

    LOAD R4 R1                 ; R4 = carrier player_x
    LOADI R7 #95
    CMP R4 R7
    LOADI RA #0x04
    AND RA RA RC
    JEQ away_ai_dribble        ; player_x >= 95 -> keep dribbling toward goal

    ; In shooting range (player_x < 95) -> Shoot left at Home goal!
    LOADI R4 ball_owner
    LOADHI R4 ball_owner
    LOADI R7 #255
    STORE R4 R7                ; ball_owner = 255

    LOADI R4 ball_timer
    LOADHI R4 ball_timer
    LOADI R7 #45
    STORE R4 R7                ; ball_timer = 45

    LOADI R7 #3
    SUB R7 R0 R7               ; R7 = -3 (shoot left)
    LOADI R4 ball_vx
    LOADHI R4 ball_vx
    STORE R4 R7                ; ball_vx = -3

    LOADI R4 ball_vy
    LOADHI R4 ball_vy
    STORE R4 R0                ; ball_vy = 0
    JMP away_ai_next

away_ai_dribble:
    ; Dribble toward center of Home goal mouth (X = 25, Y = 163)
    LOADI R6 #25               ; target_x = 25
    LOADI R5 #163              ; target_y = 163

    ; Step player_x ([R1]) toward R6
    LOAD R4 R1
    LOADI R7 #1
    CMP R4 R6
    JEQ away_ai_drib_y
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_drib_inc_x
    SUB R4 R4 R7
    STORE R1 R4
    JMP away_ai_drib_y
away_ai_drib_inc_x:
    ADD R4 R4 R7
    STORE R1 R4

away_ai_drib_y:
    ; Step player_y ([R1 + 1]) toward R5
    LOADI R7 #1
    ADD R6 R1 R7               ; R6 = &player_y
    LOAD R7 R6                 ; R7 = current player_y
    LOADI RB #1
    CMP R7 R5
    JEQ away_ai_stick_ball
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_drib_inc_y
    SUB R7 R7 RB
    STORE R6 R7
    JMP away_ai_stick_ball
away_ai_drib_inc_y:
    ADD R7 R7 RB
    STORE R6 R7

away_ai_stick_ball:
    ; Stick ball to left foot of Away carrier (ball_x = player_x - 6, ball_y = player_y + 4)
    LOAD R4 R1                 ; R4 = updated player_x
    LOADI RB #6
    SUB R4 R4 RB
    LOADI R6 ball_x
    LOADHI R6 ball_x
    STORE R6 R4
    ADD R8 R4 R0               ; Keep R8 (ball_x) updated

    LOADI RB #1
    ADD R6 R1 RB
    LOAD R7 R6                 ; R7 = updated player_y
    LOADI RB #4
    ADD R7 R7 RB
    LOADI R6 ball_y
    LOADHI R6 ball_y
    STORE R6 R7
    JMP away_ai_next

away_ai_off_ball:
    ; Default target_y (R5) = home lane d_player_y ([R2 + 1])
    LOADI R7 #1
    ADD R5 R2 R7
    LOAD R5 R5                 ; R5 = d_player_y

    ; Check if Away team (>= 11) or Home team (< 11) has possession
    LOADI R7 #255
    CMP R9 R7
    JNE away_ai_team_cmp
    LOADI R4 last_owner
    LOADHI R4 last_owner
    LOAD R4 R4
    JMP away_ai_do_cmp
away_ai_team_cmp:
    ADD R4 R9 R0
away_ai_do_cmp:
    LOADI R7 #11
    CMP R4 R7
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_defend         ; Possession < 11 -> Home team has ball (Away defends)

    ; ATTACKING SUPPORT (Away team has the ball, attacking Right-to-Left)
    ;   11..13 = Forwards (FW):     target_x = ball_x - 15,  clamped [50, 390]
    ;   14..16 = Midfielders (CM):  target_x = ball_x + 50,  clamped [120, 480]
    ;   17..20 = Defenders (CB/FB): target_x = ball_x + 140, clamped [330, 530] (don't cross midline 320)

    LOADI RA #14
    CMP R3 RA
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_fw

    LOADI RA #17
    CMP R3 RA
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_mid

    ; --- Defenders (17..20): stay back (ball_x + 140) and never cross midline (clamped [330, 530]) ---
    LOADI R6 #140
    ADD R6 R8 R6               ; R6 = ball_x + 140
    LOADI R7 #330
    LOADHI R7 #330
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JEQ away_ai_def_max
    LOADI R6 #330
    LOADHI R6 #330
    JMP away_ai_move_x
away_ai_def_max:
    LOADI R7 #530
    LOADHI R7 #530
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_move_x
    LOADI R6 #530
    LOADHI R6 #530
    JMP away_ai_move_x

away_ai_mid:
    ; --- Midfielders (14..16): slightly behind ball (ball_x + 50, clamped [120, 480]) ---
    LOADI R6 #50
    ADD R6 R8 R6               ; R6 = ball_x + 50
    LOADI R7 #120
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JEQ away_ai_mid_max
    LOADI R6 #120
    JMP away_ai_move_x
away_ai_mid_max:
    LOADI R7 #480
    LOADHI R7 #480
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_move_x
    LOADI R6 #480
    LOADHI R6 #480
    JMP away_ai_move_x

away_ai_fw:
    ; --- Forwards (11..13): move with the ball (ball_x - 15, clamped [50, 390]) ---
    LOADI R6 #15
    SUB R6 R8 R6               ; R6 = ball_x - 15
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_fw_min
    LOADI R7 #50
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JEQ away_ai_fw_max
away_ai_fw_min:
    LOADI R6 #50
    JMP away_ai_move_x
away_ai_fw_max:
    LOADI R7 #390
    LOADHI R7 #390
    CMP R6 R7
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_move_x
    LOADI R6 #390
    LOADHI R6 #390
    JMP away_ai_move_x

    ; DEFENDING MODE (Home team has the ball)
    ;   - Default: return to home position (d_player_x, d_player_y)
    ;   - If inside 90x90 square around ball (|px - bx| <= 45 and |py - by| <= 45),
    ;     press/tackle toward (ball_x, ball_y) (Defenders 17..20 only press in own half >= 320)

away_ai_defend:
    LOAD R6 R2                 ; Default target_x (R6) = d_player_x (R5 is already d_player_y)

    ; Defenders (17..20) do not chase the ball past the midline (ball_x < 320)
    LOADI RA #17
    CMP R3 RA
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_check_box
    LOADI R7 #320
    LOADHI R7 #320
    CMP R8 R7
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_move_x         ; ball_x < 320 -> Away defender returns home

away_ai_check_box:
    ; Smaler enemy press square (46 px) so only 1 defender presses when you walk close, no swarming
    LOAD R4 R1                 ; R4 = player_x
    LOADI RB #46
    ADD R7 R4 RB               ; R7 = player_x + 46
    CMP R7 R8                  ; (player_x + 46) - ball_x
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_move_x

    ADD R7 R8 RB               ; R7 = ball_x + 46
    CMP R7 R4                  ; (ball_x + 46) - player_x
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_move_x

    ; Check |player_y - ball_y| <= 46
    LOADI R7 #1
    ADD R4 R1 R7
    LOAD R4 R4                 ; R4 = player_y
    LOADI R7 ball_y
    LOADHI R7 ball_y
    LOAD R7 R7                 ; R7 = ball_y

    ADD RA R4 RB               ; RA = player_y + 46
    CMP RA R7                  ; (player_y + 46) - ball_y
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_move_x

    ADD RA R7 RB               ; RA = ball_y + 46
    CMP RA R4                  ; (ball_y + 46) - player_y
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_move_x

    ; Inside tackle square around ball -> chase (ball_x, ball_y) without cutting ahead
    ADD R6 R8 R0               ; target_x (R6) = ball_x
    ADD R5 R7 R0               ; target_y (R5) = ball_y

away_ai_move_x:
    ; Step player_x ([R1]) toward target_x (R6) by 1 px (no diagonal boost: if X moves, skip Y)
    LOAD R4 R1                 ; R4 = current player_x
    LOADI R7 #1
    CMP R4 R6
    JEQ away_ai_move_y
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_inc_x
    SUB R4 R4 R7
    STORE R1 R4
    JMP away_ai_next
away_ai_inc_x:
    ADD R4 R4 R7
    STORE R1 R4
    JMP away_ai_next

away_ai_move_y:
    ; Step player_y ([R1 + 1]) toward target_y (R5) by 1 px
    LOADI R7 #1
    ADD R4 R1 R7               ; R4 = &player_y
    LOAD R6 R4                 ; R6 = current player_y
    CMP R6 R5
    JEQ away_ai_next
    LOADI RA #0x04
    AND RA RA RC
    JNE away_ai_inc_y
    SUB R6 R6 R7
    STORE R4 R6
    JMP away_ai_next
away_ai_inc_y:
    ADD R6 R6 R7
    STORE R4 R6

away_ai_next:
    LOADI R7 #2
    ADD R1 R1 R7               ; Next player_x
    ADD R2 R2 R7               ; Next d_player_x
    LOADI R7 #1
    ADD R3 R3 R7               ; player index++
    LOADI RA #22               ; Include player_21 (Away GK), stop at 22
    CMP R3 RA
    JNE away_ai_loop

away_ai_ret:
    RET
