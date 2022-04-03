\* Double_Facility_Problem *\
Minimize
Total_Walking_Distance: 56 d_x_2_0 + 76 d_x_2_1 + 58 d_x_2_10 + 18 d_x_2_11
 + 68 d_x_2_12 + 46 d_x_2_13 + 24 d_x_2_14 + 6 d_x_2_15 + 70 d_x_2_16
 + 80 d_x_2_17 + 8 d_x_2_18 + 66 d_x_2_19 + 70 d_x_2_2 + 34 d_x_2_20
 + 14 d_x_2_21 + 24 d_x_2_22 + 62 d_x_2_23 + 80 d_x_2_3 + 54 d_x_2_4
 + 14 d_x_2_5 + 70 d_x_2_6 + 78 d_x_2_7 + 74 d_x_2_8 + 46 d_x_2_9 + 56 d_y_2_0
 + 76 d_y_2_1 + 58 d_y_2_10 + 18 d_y_2_11 + 68 d_y_2_12 + 46 d_y_2_13
 + 24 d_y_2_14 + 6 d_y_2_15 + 70 d_y_2_16 + 80 d_y_2_17 + 8 d_y_2_18
 + 66 d_y_2_19 + 70 d_y_2_2 + 34 d_y_2_20 + 14 d_y_2_21 + 24 d_y_2_22
 + 62 d_y_2_23 + 80 d_y_2_3 + 54 d_y_2_4 + 14 d_y_2_5 + 70 d_y_2_6
 + 78 d_y_2_7 + 74 d_y_2_8 + 46 d_y_2_9
Subject To
N0_F1_Prevent_Build: - d_x_2_0 - d_y_2_0 <= -1
N0_F1_X_LB: - d_x_2_0 + u_1 <= 6
N0_F1_X_UB: - d_x_2_0 - u_1 <= -6
N0_F1_Y_LB: - d_y_2_0 + v_1 <= 1
N0_F1_Y_UB: - d_y_2_0 - v_1 <= -1
N0_F2_Prevent_Build: - d_x_2_0 - d_y_2_0 <= -1
N0_F2_X_LB: - d_x_2_0 + u_2 <= 6
N0_F2_X_UB: - d_x_2_0 - u_2 <= -6
N0_F2_Y_LB: - d_x_2_0 + v_2 <= 1
N0_F2_Y_UB: - d_x_2_0 - v_2 <= -1
N10_F1_Prevent_Build: - d_x_2_10 - d_y_2_10 <= -1
N10_F1_X_LB: - d_x_2_10 + u_1 <= 23
N10_F1_X_UB: - d_x_2_10 - u_1 <= -23
N10_F1_Y_LB: - d_y_2_10 + v_1 <= 16
N10_F1_Y_UB: - d_y_2_10 - v_1 <= -16
N10_F2_Prevent_Build: - d_x_2_10 - d_y_2_10 <= -1
N10_F2_X_LB: - d_x_2_10 + u_2 <= 23
N10_F2_X_UB: - d_x_2_10 - u_2 <= -23
N10_F2_Y_LB: - d_x_2_10 + v_2 <= 16
N10_F2_Y_UB: - d_x_2_10 - v_2 <= -16
N11_F1_Prevent_Build: - d_x_2_11 - d_y_2_11 <= -1
N11_F1_X_LB: - d_x_2_11 + u_1 <= 11
N11_F1_X_UB: - d_x_2_11 - u_1 <= -11
N11_F1_Y_LB: - d_y_2_11 + v_1 <= 15
N11_F1_Y_UB: - d_y_2_11 - v_1 <= -15
N11_F2_Prevent_Build: - d_x_2_11 - d_y_2_11 <= -1
N11_F2_X_LB: - d_x_2_11 + u_2 <= 11
N11_F2_X_UB: - d_x_2_11 - u_2 <= -11
N11_F2_Y_LB: - d_x_2_11 + v_2 <= 15
N11_F2_Y_UB: - d_x_2_11 - v_2 <= -15
N12_F1_Prevent_Build: - d_x_2_12 - d_y_2_12 <= -1
N12_F1_X_LB: - d_x_2_12 + u_1 <= 20
N12_F1_X_UB: - d_x_2_12 - u_1 <= -20
N12_F1_Y_LB: - d_y_2_12 + v_1 <= 2
N12_F1_Y_UB: - d_y_2_12 - v_1 <= -2
N12_F2_Prevent_Build: - d_x_2_12 - d_y_2_12 <= -1
N12_F2_X_LB: - d_x_2_12 + u_2 <= 20
N12_F2_X_UB: - d_x_2_12 - u_2 <= -20
N12_F2_Y_LB: - d_x_2_12 + v_2 <= 2
N12_F2_Y_UB: - d_x_2_12 - v_2 <= -2
N13_F1_Prevent_Build: - d_x_2_13 - d_y_2_13 <= -1
N13_F1_X_LB: - d_x_2_13 + u_1 <= 11
N13_F1_X_UB: - d_x_2_13 - u_1 <= -11
N13_F1_Y_LB: - d_y_2_13 + v_1 <= 3
N13_F1_Y_UB: - d_y_2_13 - v_1 <= -3
N13_F2_Prevent_Build: - d_x_2_13 - d_y_2_13 <= -1
N13_F2_X_LB: - d_x_2_13 + u_2 <= 11
N13_F2_X_UB: - d_x_2_13 - u_2 <= -11
N13_F2_Y_LB: - d_x_2_13 + v_2 <= 3
N13_F2_Y_UB: - d_x_2_13 - v_2 <= -3
N14_F1_Prevent_Build: - d_x_2_14 - d_y_2_14 <= -1
N14_F1_X_LB: - d_x_2_14 + u_1 <= 15
N14_F1_X_UB: - d_x_2_14 - u_1 <= -15
N14_F1_Y_LB: - d_y_2_14 + v_1 <= 4
N14_F1_Y_UB: - d_y_2_14 - v_1 <= -4
N14_F2_Prevent_Build: - d_x_2_14 - d_y_2_14 <= -1
N14_F2_X_LB: - d_x_2_14 + u_2 <= 15
N14_F2_X_UB: - d_x_2_14 - u_2 <= -15
N14_F2_Y_LB: - d_x_2_14 + v_2 <= 4
N14_F2_Y_UB: - d_x_2_14 - v_2 <= -4
N15_F1_Prevent_Build: - d_x_2_15 - d_y_2_15 <= -1
N15_F1_X_LB: - d_x_2_15 + u_1 <= 4
N15_F1_X_UB: - d_x_2_15 - u_1 <= -4
N15_F1_Y_LB: - d_y_2_15 + v_1 <= 17
N15_F1_Y_UB: - d_y_2_15 - v_1 <= -17
N15_F2_Prevent_Build: - d_x_2_15 - d_y_2_15 <= -1
N15_F2_X_LB: - d_x_2_15 + u_2 <= 4
N15_F2_X_UB: - d_x_2_15 - u_2 <= -4
N15_F2_Y_LB: - d_x_2_15 + v_2 <= 17
N15_F2_Y_UB: - d_x_2_15 - v_2 <= -17
N16_F1_Prevent_Build: - d_x_2_16 - d_y_2_16 <= -1
N16_F1_X_LB: - d_x_2_16 + u_1 <= 15
N16_F1_X_UB: - d_x_2_16 - u_1 <= -15
N16_F1_Y_LB: - d_y_2_16 + v_1 <= 8
N16_F1_Y_UB: - d_y_2_16 - v_1 <= -8
N16_F2_Prevent_Build: - d_x_2_16 - d_y_2_16 <= -1
N16_F2_X_LB: - d_x_2_16 + u_2 <= 15
N16_F2_X_UB: - d_x_2_16 - u_2 <= -15
N16_F2_Y_LB: - d_x_2_16 + v_2 <= 8
N16_F2_Y_UB: - d_x_2_16 - v_2 <= -8
N17_F1_Prevent_Build: - d_x_2_17 - d_y_2_17 <= -1
N17_F1_X_LB: - d_x_2_17 + u_1 <= 20
N17_F1_X_UB: - d_x_2_17 - u_1 <= -20
N17_F1_Y_LB: - d_y_2_17 + v_1 <= 11
N17_F1_Y_UB: - d_y_2_17 - v_1 <= -11
N17_F2_Prevent_Build: - d_x_2_17 - d_y_2_17 <= -1
N17_F2_X_LB: - d_x_2_17 + u_2 <= 20
N17_F2_X_UB: - d_x_2_17 - u_2 <= -20
N17_F2_Y_LB: - d_x_2_17 + v_2 <= 11
N17_F2_Y_UB: - d_x_2_17 - v_2 <= -11
N18_F1_Prevent_Build: - d_x_2_18 - d_y_2_18 <= -1
N18_F1_X_LB: - d_x_2_18 + u_1 <= 13
N18_F1_X_UB: - d_x_2_18 - u_1 <= -13
N18_F1_Y_LB: - d_y_2_18 + v_1 <= 6
N18_F1_Y_UB: - d_y_2_18 - v_1 <= -6
N18_F2_Prevent_Build: - d_x_2_18 - d_y_2_18 <= -1
N18_F2_X_LB: - d_x_2_18 + u_2 <= 13
N18_F2_X_UB: - d_x_2_18 - u_2 <= -13
N18_F2_Y_LB: - d_x_2_18 + v_2 <= 6
N18_F2_Y_UB: - d_x_2_18 - v_2 <= -6
N19_F1_Prevent_Build: - d_x_2_19 - d_y_2_19 <= -1
N19_F1_X_LB: - d_x_2_19 + u_1 <= 18
N19_F1_X_UB: - d_x_2_19 - u_1 <= -18
N19_F1_Y_LB: - d_y_2_19 + v_1 <= 9
N19_F1_Y_UB: - d_y_2_19 - v_1 <= -9
N19_F2_Prevent_Build: - d_x_2_19 - d_y_2_19 <= -1
N19_F2_X_LB: - d_x_2_19 + u_2 <= 18
N19_F2_X_UB: - d_x_2_19 - u_2 <= -18
N19_F2_Y_LB: - d_x_2_19 + v_2 <= 9
N19_F2_Y_UB: - d_x_2_19 - v_2 <= -9
N1_F1_Prevent_Build: - d_x_2_1 - d_y_2_1 <= -1
N1_F1_X_LB: - d_x_2_1 + u_1 <= 13
N1_F1_X_UB: - d_x_2_1 - u_1 <= -13
N1_F1_Y_LB: - d_y_2_1 + v_1 <= 15
N1_F1_Y_UB: - d_y_2_1 - v_1 <= -15
N1_F2_Prevent_Build: - d_x_2_1 - d_y_2_1 <= -1
N1_F2_X_LB: - d_x_2_1 + u_2 <= 13
N1_F2_X_UB: - d_x_2_1 - u_2 <= -13
N1_F2_Y_LB: - d_x_2_1 + v_2 <= 15
N1_F2_Y_UB: - d_x_2_1 - v_2 <= -15
N20_F1_Prevent_Build: - d_x_2_20 - d_y_2_20 <= -1
N20_F1_X_LB: - d_x_2_20 + u_1 <= 16
N20_F1_X_UB: - d_x_2_20 - u_1 <= -16
N20_F1_Y_LB: - d_y_2_20 + v_1 <= 7
N20_F1_Y_UB: - d_y_2_20 - v_1 <= -7
N20_F2_Prevent_Build: - d_x_2_20 - d_y_2_20 <= -1
N20_F2_X_LB: - d_x_2_20 + u_2 <= 16
N20_F2_X_UB: - d_x_2_20 - u_2 <= -16
N20_F2_Y_LB: - d_x_2_20 + v_2 <= 7
N20_F2_Y_UB: - d_x_2_20 - v_2 <= -7
N21_F1_Prevent_Build: - d_x_2_21 - d_y_2_21 <= -1
N21_F1_X_LB: - d_x_2_21 + u_1 <= 2
N21_F1_X_UB: - d_x_2_21 - u_1 <= -2
N21_F1_Y_LB: - d_y_2_21 + v_1 <= 6
N21_F1_Y_UB: - d_y_2_21 - v_1 <= -6
N21_F2_Prevent_Build: - d_x_2_21 - d_y_2_21 <= -1
N21_F2_X_LB: - d_x_2_21 + u_2 <= 2
N21_F2_X_UB: - d_x_2_21 - u_2 <= -2
N21_F2_Y_LB: - d_x_2_21 + v_2 <= 6
N21_F2_Y_UB: - d_x_2_21 - v_2 <= -6
N22_F1_Prevent_Build: - d_x_2_22 - d_y_2_22 <= -1
N22_F1_X_LB: - d_x_2_22 + u_1 <= 18
N22_F1_X_UB: - d_x_2_22 - u_1 <= -18
N22_F1_Y_LB: - d_y_2_22 + v_1 <= 10
N22_F1_Y_UB: - d_y_2_22 - v_1 <= -10
N22_F2_Prevent_Build: - d_x_2_22 - d_y_2_22 <= -1
N22_F2_X_LB: - d_x_2_22 + u_2 <= 18
N22_F2_X_UB: - d_x_2_22 - u_2 <= -18
N22_F2_Y_LB: - d_x_2_22 + v_2 <= 10
N22_F2_Y_UB: - d_x_2_22 - v_2 <= -10
N23_F1_Prevent_Build: - d_x_2_23 - d_y_2_23 <= -1
N23_F1_X_LB: - d_x_2_23 + u_1 <= 14
N23_F1_X_UB: - d_x_2_23 - u_1 <= -14
N23_F1_Y_LB: - d_y_2_23 + v_1 <= 10
N23_F1_Y_UB: - d_y_2_23 - v_1 <= -10
N23_F2_Prevent_Build: - d_x_2_23 - d_y_2_23 <= -1
N23_F2_X_LB: - d_x_2_23 + u_2 <= 14
N23_F2_X_UB: - d_x_2_23 - u_2 <= -14
N23_F2_Y_LB: - d_x_2_23 + v_2 <= 10
N23_F2_Y_UB: - d_x_2_23 - v_2 <= -10
N2_F1_Prevent_Build: - d_x_2_2 - d_y_2_2 <= -1
N2_F1_X_LB: - d_x_2_2 + u_1 <= 9
N2_F1_X_UB: - d_x_2_2 - u_1 <= -9
N2_F1_Y_LB: - d_y_2_2 + v_1 <= 9
N2_F1_Y_UB: - d_y_2_2 - v_1 <= -9
N2_F2_Prevent_Build: - d_x_2_2 - d_y_2_2 <= -1
N2_F2_X_LB: - d_x_2_2 + u_2 <= 9
N2_F2_X_UB: - d_x_2_2 - u_2 <= -9
N2_F2_Y_LB: - d_x_2_2 + v_2 <= 9
N2_F2_Y_UB: - d_x_2_2 - v_2 <= -9
N3_F1_Prevent_Build: - d_x_2_3 - d_y_2_3 <= -1
N3_F1_X_LB: - d_x_2_3 + u_1 <= 14
N3_F1_X_UB: - d_x_2_3 - u_1 <= -14
N3_F1_Y_LB: - d_y_2_3 + v_1 <= 13
N3_F1_Y_UB: - d_y_2_3 - v_1 <= -13
N3_F2_Prevent_Build: - d_x_2_3 - d_y_2_3 <= -1
N3_F2_X_LB: - d_x_2_3 + u_2 <= 14
N3_F2_X_UB: - d_x_2_3 - u_2 <= -14
N3_F2_Y_LB: - d_x_2_3 + v_2 <= 13
N3_F2_Y_UB: - d_x_2_3 - v_2 <= -13
N4_F1_Prevent_Build: - d_x_2_4 - d_y_2_4 <= -1
N4_F1_X_LB: - d_x_2_4 + u_1 <= 15
N4_F1_X_UB: - d_x_2_4 - u_1 <= -15
N4_F1_Y_LB: - d_y_2_4 + v_1 <= 15
N4_F1_Y_UB: - d_y_2_4 - v_1 <= -15
N4_F2_Prevent_Build: - d_x_2_4 - d_y_2_4 <= -1
N4_F2_X_LB: - d_x_2_4 + u_2 <= 15
N4_F2_X_UB: - d_x_2_4 - u_2 <= -15
N4_F2_Y_LB: - d_x_2_4 + v_2 <= 15
N4_F2_Y_UB: - d_x_2_4 - v_2 <= -15
N5_F1_Prevent_Build: - d_x_2_5 - d_y_2_5 <= -1
N5_F1_X_LB: - d_x_2_5 + u_1 <= 2
N5_F1_X_UB: - d_x_2_5 - u_1 <= -2
N5_F1_Y_LB: - d_y_2_5 + v_1 <= 13
N5_F1_Y_UB: - d_y_2_5 - v_1 <= -13
N5_F2_Prevent_Build: - d_x_2_5 - d_y_2_5 <= -1
N5_F2_X_LB: - d_x_2_5 + u_2 <= 2
N5_F2_X_UB: - d_x_2_5 - u_2 <= -2
N5_F2_Y_LB: - d_x_2_5 + v_2 <= 13
N5_F2_Y_UB: - d_x_2_5 - v_2 <= -13
N6_F1_Prevent_Build: - d_x_2_6 - d_y_2_6 <= -1
N6_F1_X_LB: - d_x_2_6 + u_1 <= 1
N6_F1_X_UB: - d_x_2_6 - u_1 <= -1
N6_F1_Y_LB: - d_y_2_6 + v_1 <= 16
N6_F1_Y_UB: - d_y_2_6 - v_1 <= -16
N6_F2_Prevent_Build: - d_x_2_6 - d_y_2_6 <= -1
N6_F2_X_LB: - d_x_2_6 + u_2 <= 1
N6_F2_X_UB: - d_x_2_6 - u_2 <= -1
N6_F2_Y_LB: - d_x_2_6 + v_2 <= 16
N6_F2_Y_UB: - d_x_2_6 - v_2 <= -16
N7_F1_Prevent_Build: - d_x_2_7 - d_y_2_7 <= -1
N7_F1_X_LB: - d_x_2_7 + u_1 <= 20
N7_F1_X_UB: - d_x_2_7 - u_1 <= -20
N7_F1_Y_LB: - d_y_2_7 + v_1 <= 7
N7_F1_Y_UB: - d_y_2_7 - v_1 <= -7
N7_F2_Prevent_Build: - d_x_2_7 - d_y_2_7 <= -1
N7_F2_X_LB: - d_x_2_7 + u_2 <= 20
N7_F2_X_UB: - d_x_2_7 - u_2 <= -20
N7_F2_Y_LB: - d_x_2_7 + v_2 <= 7
N7_F2_Y_UB: - d_x_2_7 - v_2 <= -7
N8_F1_Prevent_Build: - d_x_2_8 - d_y_2_8 <= -1
N8_F1_X_LB: - d_x_2_8 + u_1 <= 6
N8_F1_X_UB: - d_x_2_8 - u_1 <= -6
N8_F1_Y_LB: - d_y_2_8 + v_1 <= 14
N8_F1_Y_UB: - d_y_2_8 - v_1 <= -14
N8_F2_Prevent_Build: - d_x_2_8 - d_y_2_8 <= -1
N8_F2_X_LB: - d_x_2_8 + u_2 <= 6
N8_F2_X_UB: - d_x_2_8 - u_2 <= -6
N8_F2_Y_LB: - d_x_2_8 + v_2 <= 14
N8_F2_Y_UB: - d_x_2_8 - v_2 <= -14
N9_F1_Prevent_Build: - d_x_2_9 - d_y_2_9 <= -1
N9_F1_X_LB: - d_x_2_9 + u_1 <= 6
N9_F1_X_UB: - d_x_2_9 - u_1 <= -6
N9_F1_Y_LB: - d_y_2_9 + v_1 <= 8
N9_F1_Y_UB: - d_y_2_9 - v_1 <= -8
N9_F2_Prevent_Build: - d_x_2_9 - d_y_2_9 <= -1
N9_F2_X_LB: - d_x_2_9 + u_2 <= 6
N9_F2_X_UB: - d_x_2_9 - u_2 <= -6
N9_F2_Y_LB: - d_x_2_9 + v_2 <= 8
N9_F2_Y_UB: - d_x_2_9 - v_2 <= -8
Bounds
 d_x_2_0 free
 d_x_2_1 free
 d_x_2_10 free
 d_x_2_11 free
 d_x_2_12 free
 d_x_2_13 free
 d_x_2_14 free
 d_x_2_15 free
 d_x_2_16 free
 d_x_2_17 free
 d_x_2_18 free
 d_x_2_19 free
 d_x_2_2 free
 d_x_2_20 free
 d_x_2_21 free
 d_x_2_22 free
 d_x_2_23 free
 d_x_2_3 free
 d_x_2_4 free
 d_x_2_5 free
 d_x_2_6 free
 d_x_2_7 free
 d_x_2_8 free
 d_x_2_9 free
 d_y_2_0 free
 d_y_2_1 free
 d_y_2_10 free
 d_y_2_11 free
 d_y_2_12 free
 d_y_2_13 free
 d_y_2_14 free
 d_y_2_15 free
 d_y_2_16 free
 d_y_2_17 free
 d_y_2_18 free
 d_y_2_19 free
 d_y_2_2 free
 d_y_2_20 free
 d_y_2_21 free
 d_y_2_22 free
 d_y_2_23 free
 d_y_2_3 free
 d_y_2_4 free
 d_y_2_5 free
 d_y_2_6 free
 d_y_2_7 free
 d_y_2_8 free
 d_y_2_9 free
 0 <= u_1
 0 <= u_2
 0 <= v_1
 0 <= v_2
Generals
d_x_2_0
d_x_2_1
d_x_2_10
d_x_2_11
d_x_2_12
d_x_2_13
d_x_2_14
d_x_2_15
d_x_2_16
d_x_2_17
d_x_2_18
d_x_2_19
d_x_2_2
d_x_2_20
d_x_2_21
d_x_2_22
d_x_2_23
d_x_2_3
d_x_2_4
d_x_2_5
d_x_2_6
d_x_2_7
d_x_2_8
d_x_2_9
d_y_2_0
d_y_2_1
d_y_2_10
d_y_2_11
d_y_2_12
d_y_2_13
d_y_2_14
d_y_2_15
d_y_2_16
d_y_2_17
d_y_2_18
d_y_2_19
d_y_2_2
d_y_2_20
d_y_2_21
d_y_2_22
d_y_2_23
d_y_2_3
d_y_2_4
d_y_2_5
d_y_2_6
d_y_2_7
d_y_2_8
d_y_2_9
u_1
u_2
v_1
v_2
End
