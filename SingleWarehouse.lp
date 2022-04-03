\* Single_Warehouse_Problem *\
Minimize
Total_Walking_Distance: 28 Neighborhood_0_DistX + 28 Neighborhood_0_DistY
 + 29 Neighborhood_10_DistX + 29 Neighborhood_10_DistY
 + 9 Neighborhood_11_DistX + 9 Neighborhood_11_DistY
 + 34 Neighborhood_12_DistX + 34 Neighborhood_12_DistY
 + 23 Neighborhood_13_DistX + 23 Neighborhood_13_DistY
 + 12 Neighborhood_14_DistX + 12 Neighborhood_14_DistY
 + 3 Neighborhood_15_DistX + 3 Neighborhood_15_DistY
 + 35 Neighborhood_16_DistX + 35 Neighborhood_16_DistY
 + 40 Neighborhood_17_DistX + 40 Neighborhood_17_DistY
 + 4 Neighborhood_18_DistX + 4 Neighborhood_18_DistY
 + 33 Neighborhood_19_DistX + 33 Neighborhood_19_DistY
 + 38 Neighborhood_1_DistX + 38 Neighborhood_1_DistY
 + 17 Neighborhood_20_DistX + 17 Neighborhood_20_DistY
 + 7 Neighborhood_21_DistX + 7 Neighborhood_21_DistY
 + 12 Neighborhood_22_DistX + 12 Neighborhood_22_DistY
 + 31 Neighborhood_23_DistX + 31 Neighborhood_23_DistY
 + 35 Neighborhood_2_DistX + 35 Neighborhood_2_DistY + 40 Neighborhood_3_DistX
 + 40 Neighborhood_3_DistY + 27 Neighborhood_4_DistX + 27 Neighborhood_4_DistY
 + 7 Neighborhood_5_DistX + 7 Neighborhood_5_DistY + 35 Neighborhood_6_DistX
 + 35 Neighborhood_6_DistY + 39 Neighborhood_7_DistX + 39 Neighborhood_7_DistY
 + 37 Neighborhood_8_DistX + 37 Neighborhood_8_DistY + 23 Neighborhood_9_DistX
 + 23 Neighborhood_9_DistY
Subject To
Neighborhood_0_Prevent_Build: - Neighborhood_0_DistX - Neighborhood_0_DistY
 <= -1
Neighborhood_0_X_LB: - Neighborhood_0_DistX + Warehouse_X <= 6
Neighborhood_0_X_UB: - Neighborhood_0_DistX - Warehouse_X <= -6
Neighborhood_0_Y_LB: - Neighborhood_0_DistY + Warehouse_Y <= 1
Neighborhood_0_Y_UB: - Neighborhood_0_DistY - Warehouse_Y <= -1
Neighborhood_10_Prevent_Build: - Neighborhood_10_DistX - Neighborhood_10_DistY
 <= -1
Neighborhood_10_X_LB: - Neighborhood_10_DistX + Warehouse_X <= 23
Neighborhood_10_X_UB: - Neighborhood_10_DistX - Warehouse_X <= -23
Neighborhood_10_Y_LB: - Neighborhood_10_DistY + Warehouse_Y <= 16
Neighborhood_10_Y_UB: - Neighborhood_10_DistY - Warehouse_Y <= -16
Neighborhood_11_Prevent_Build: - Neighborhood_11_DistX - Neighborhood_11_DistY
 <= -1
Neighborhood_11_X_LB: - Neighborhood_11_DistX + Warehouse_X <= 11
Neighborhood_11_X_UB: - Neighborhood_11_DistX - Warehouse_X <= -11
Neighborhood_11_Y_LB: - Neighborhood_11_DistY + Warehouse_Y <= 15
Neighborhood_11_Y_UB: - Neighborhood_11_DistY - Warehouse_Y <= -15
Neighborhood_12_Prevent_Build: - Neighborhood_12_DistX - Neighborhood_12_DistY
 <= -1
Neighborhood_12_X_LB: - Neighborhood_12_DistX + Warehouse_X <= 20
Neighborhood_12_X_UB: - Neighborhood_12_DistX - Warehouse_X <= -20
Neighborhood_12_Y_LB: - Neighborhood_12_DistY + Warehouse_Y <= 2
Neighborhood_12_Y_UB: - Neighborhood_12_DistY - Warehouse_Y <= -2
Neighborhood_13_Prevent_Build: - Neighborhood_13_DistX - Neighborhood_13_DistY
 <= -1
Neighborhood_13_X_LB: - Neighborhood_13_DistX + Warehouse_X <= 11
Neighborhood_13_X_UB: - Neighborhood_13_DistX - Warehouse_X <= -11
Neighborhood_13_Y_LB: - Neighborhood_13_DistY + Warehouse_Y <= 3
Neighborhood_13_Y_UB: - Neighborhood_13_DistY - Warehouse_Y <= -3
Neighborhood_14_Prevent_Build: - Neighborhood_14_DistX - Neighborhood_14_DistY
 <= -1
Neighborhood_14_X_LB: - Neighborhood_14_DistX + Warehouse_X <= 15
Neighborhood_14_X_UB: - Neighborhood_14_DistX - Warehouse_X <= -15
Neighborhood_14_Y_LB: - Neighborhood_14_DistY + Warehouse_Y <= 4
Neighborhood_14_Y_UB: - Neighborhood_14_DistY - Warehouse_Y <= -4
Neighborhood_15_Prevent_Build: - Neighborhood_15_DistX - Neighborhood_15_DistY
 <= -1
Neighborhood_15_X_LB: - Neighborhood_15_DistX + Warehouse_X <= 4
Neighborhood_15_X_UB: - Neighborhood_15_DistX - Warehouse_X <= -4
Neighborhood_15_Y_LB: - Neighborhood_15_DistY + Warehouse_Y <= 17
Neighborhood_15_Y_UB: - Neighborhood_15_DistY - Warehouse_Y <= -17
Neighborhood_16_Prevent_Build: - Neighborhood_16_DistX - Neighborhood_16_DistY
 <= -1
Neighborhood_16_X_LB: - Neighborhood_16_DistX + Warehouse_X <= 15
Neighborhood_16_X_UB: - Neighborhood_16_DistX - Warehouse_X <= -15
Neighborhood_16_Y_LB: - Neighborhood_16_DistY + Warehouse_Y <= 8
Neighborhood_16_Y_UB: - Neighborhood_16_DistY - Warehouse_Y <= -8
Neighborhood_17_Prevent_Build: - Neighborhood_17_DistX - Neighborhood_17_DistY
 <= -1
Neighborhood_17_X_LB: - Neighborhood_17_DistX + Warehouse_X <= 20
Neighborhood_17_X_UB: - Neighborhood_17_DistX - Warehouse_X <= -20
Neighborhood_17_Y_LB: - Neighborhood_17_DistY + Warehouse_Y <= 11
Neighborhood_17_Y_UB: - Neighborhood_17_DistY - Warehouse_Y <= -11
Neighborhood_18_Prevent_Build: - Neighborhood_18_DistX - Neighborhood_18_DistY
 <= -1
Neighborhood_18_X_LB: - Neighborhood_18_DistX + Warehouse_X <= 13
Neighborhood_18_X_UB: - Neighborhood_18_DistX - Warehouse_X <= -13
Neighborhood_18_Y_LB: - Neighborhood_18_DistY + Warehouse_Y <= 6
Neighborhood_18_Y_UB: - Neighborhood_18_DistY - Warehouse_Y <= -6
Neighborhood_19_Prevent_Build: - Neighborhood_19_DistX - Neighborhood_19_DistY
 <= -1
Neighborhood_19_X_LB: - Neighborhood_19_DistX + Warehouse_X <= 18
Neighborhood_19_X_UB: - Neighborhood_19_DistX - Warehouse_X <= -18
Neighborhood_19_Y_LB: - Neighborhood_19_DistY + Warehouse_Y <= 9
Neighborhood_19_Y_UB: - Neighborhood_19_DistY - Warehouse_Y <= -9
Neighborhood_1_Prevent_Build: - Neighborhood_1_DistX - Neighborhood_1_DistY
 <= -1
Neighborhood_1_X_LB: - Neighborhood_1_DistX + Warehouse_X <= 13
Neighborhood_1_X_UB: - Neighborhood_1_DistX - Warehouse_X <= -13
Neighborhood_1_Y_LB: - Neighborhood_1_DistY + Warehouse_Y <= 15
Neighborhood_1_Y_UB: - Neighborhood_1_DistY - Warehouse_Y <= -15
Neighborhood_20_Prevent_Build: - Neighborhood_20_DistX - Neighborhood_20_DistY
 <= -1
Neighborhood_20_X_LB: - Neighborhood_20_DistX + Warehouse_X <= 16
Neighborhood_20_X_UB: - Neighborhood_20_DistX - Warehouse_X <= -16
Neighborhood_20_Y_LB: - Neighborhood_20_DistY + Warehouse_Y <= 7
Neighborhood_20_Y_UB: - Neighborhood_20_DistY - Warehouse_Y <= -7
Neighborhood_21_Prevent_Build: - Neighborhood_21_DistX - Neighborhood_21_DistY
 <= -1
Neighborhood_21_X_LB: - Neighborhood_21_DistX + Warehouse_X <= 2
Neighborhood_21_X_UB: - Neighborhood_21_DistX - Warehouse_X <= -2
Neighborhood_21_Y_LB: - Neighborhood_21_DistY + Warehouse_Y <= 6
Neighborhood_21_Y_UB: - Neighborhood_21_DistY - Warehouse_Y <= -6
Neighborhood_22_Prevent_Build: - Neighborhood_22_DistX - Neighborhood_22_DistY
 <= -1
Neighborhood_22_X_LB: - Neighborhood_22_DistX + Warehouse_X <= 18
Neighborhood_22_X_UB: - Neighborhood_22_DistX - Warehouse_X <= -18
Neighborhood_22_Y_LB: - Neighborhood_22_DistY + Warehouse_Y <= 10
Neighborhood_22_Y_UB: - Neighborhood_22_DistY - Warehouse_Y <= -10
Neighborhood_23_Prevent_Build: - Neighborhood_23_DistX - Neighborhood_23_DistY
 <= -1
Neighborhood_23_X_LB: - Neighborhood_23_DistX + Warehouse_X <= 14
Neighborhood_23_X_UB: - Neighborhood_23_DistX - Warehouse_X <= -14
Neighborhood_23_Y_LB: - Neighborhood_23_DistY + Warehouse_Y <= 10
Neighborhood_23_Y_UB: - Neighborhood_23_DistY - Warehouse_Y <= -10
Neighborhood_2_Prevent_Build: - Neighborhood_2_DistX - Neighborhood_2_DistY
 <= -1
Neighborhood_2_X_LB: - Neighborhood_2_DistX + Warehouse_X <= 9
Neighborhood_2_X_UB: - Neighborhood_2_DistX - Warehouse_X <= -9
Neighborhood_2_Y_LB: - Neighborhood_2_DistY + Warehouse_Y <= 9
Neighborhood_2_Y_UB: - Neighborhood_2_DistY - Warehouse_Y <= -9
Neighborhood_3_Prevent_Build: - Neighborhood_3_DistX - Neighborhood_3_DistY
 <= -1
Neighborhood_3_X_LB: - Neighborhood_3_DistX + Warehouse_X <= 14
Neighborhood_3_X_UB: - Neighborhood_3_DistX - Warehouse_X <= -14
Neighborhood_3_Y_LB: - Neighborhood_3_DistY + Warehouse_Y <= 13
Neighborhood_3_Y_UB: - Neighborhood_3_DistY - Warehouse_Y <= -13
Neighborhood_4_Prevent_Build: - Neighborhood_4_DistX - Neighborhood_4_DistY
 <= -1
Neighborhood_4_X_LB: - Neighborhood_4_DistX + Warehouse_X <= 15
Neighborhood_4_X_UB: - Neighborhood_4_DistX - Warehouse_X <= -15
Neighborhood_4_Y_LB: - Neighborhood_4_DistY + Warehouse_Y <= 15
Neighborhood_4_Y_UB: - Neighborhood_4_DistY - Warehouse_Y <= -15
Neighborhood_5_Prevent_Build: - Neighborhood_5_DistX - Neighborhood_5_DistY
 <= -1
Neighborhood_5_X_LB: - Neighborhood_5_DistX + Warehouse_X <= 2
Neighborhood_5_X_UB: - Neighborhood_5_DistX - Warehouse_X <= -2
Neighborhood_5_Y_LB: - Neighborhood_5_DistY + Warehouse_Y <= 13
Neighborhood_5_Y_UB: - Neighborhood_5_DistY - Warehouse_Y <= -13
Neighborhood_6_Prevent_Build: - Neighborhood_6_DistX - Neighborhood_6_DistY
 <= -1
Neighborhood_6_X_LB: - Neighborhood_6_DistX + Warehouse_X <= 1
Neighborhood_6_X_UB: - Neighborhood_6_DistX - Warehouse_X <= -1
Neighborhood_6_Y_LB: - Neighborhood_6_DistY + Warehouse_Y <= 16
Neighborhood_6_Y_UB: - Neighborhood_6_DistY - Warehouse_Y <= -16
Neighborhood_7_Prevent_Build: - Neighborhood_7_DistX - Neighborhood_7_DistY
 <= -1
Neighborhood_7_X_LB: - Neighborhood_7_DistX + Warehouse_X <= 20
Neighborhood_7_X_UB: - Neighborhood_7_DistX - Warehouse_X <= -20
Neighborhood_7_Y_LB: - Neighborhood_7_DistY + Warehouse_Y <= 7
Neighborhood_7_Y_UB: - Neighborhood_7_DistY - Warehouse_Y <= -7
Neighborhood_8_Prevent_Build: - Neighborhood_8_DistX - Neighborhood_8_DistY
 <= -1
Neighborhood_8_X_LB: - Neighborhood_8_DistX + Warehouse_X <= 6
Neighborhood_8_X_UB: - Neighborhood_8_DistX - Warehouse_X <= -6
Neighborhood_8_Y_LB: - Neighborhood_8_DistY + Warehouse_Y <= 14
Neighborhood_8_Y_UB: - Neighborhood_8_DistY - Warehouse_Y <= -14
Neighborhood_9_Prevent_Build: - Neighborhood_9_DistX - Neighborhood_9_DistY
 <= -1
Neighborhood_9_X_LB: - Neighborhood_9_DistX + Warehouse_X <= 6
Neighborhood_9_X_UB: - Neighborhood_9_DistX - Warehouse_X <= -6
Neighborhood_9_Y_LB: - Neighborhood_9_DistY + Warehouse_Y <= 8
Neighborhood_9_Y_UB: - Neighborhood_9_DistY - Warehouse_Y <= -8
Bounds
 Neighborhood_0_DistX free
 Neighborhood_0_DistY free
 Neighborhood_10_DistX free
 Neighborhood_10_DistY free
 Neighborhood_11_DistX free
 Neighborhood_11_DistY free
 Neighborhood_12_DistX free
 Neighborhood_12_DistY free
 Neighborhood_13_DistX free
 Neighborhood_13_DistY free
 Neighborhood_14_DistX free
 Neighborhood_14_DistY free
 Neighborhood_15_DistX free
 Neighborhood_15_DistY free
 Neighborhood_16_DistX free
 Neighborhood_16_DistY free
 Neighborhood_17_DistX free
 Neighborhood_17_DistY free
 Neighborhood_18_DistX free
 Neighborhood_18_DistY free
 Neighborhood_19_DistX free
 Neighborhood_19_DistY free
 Neighborhood_1_DistX free
 Neighborhood_1_DistY free
 Neighborhood_20_DistX free
 Neighborhood_20_DistY free
 Neighborhood_21_DistX free
 Neighborhood_21_DistY free
 Neighborhood_22_DistX free
 Neighborhood_22_DistY free
 Neighborhood_23_DistX free
 Neighborhood_23_DistY free
 Neighborhood_2_DistX free
 Neighborhood_2_DistY free
 Neighborhood_3_DistX free
 Neighborhood_3_DistY free
 Neighborhood_4_DistX free
 Neighborhood_4_DistY free
 Neighborhood_5_DistX free
 Neighborhood_5_DistY free
 Neighborhood_6_DistX free
 Neighborhood_6_DistY free
 Neighborhood_7_DistX free
 Neighborhood_7_DistY free
 Neighborhood_8_DistX free
 Neighborhood_8_DistY free
 Neighborhood_9_DistX free
 Neighborhood_9_DistY free
 0 <= Warehouse_X
 0 <= Warehouse_Y
Generals
Neighborhood_0_DistX
Neighborhood_0_DistY
Neighborhood_10_DistX
Neighborhood_10_DistY
Neighborhood_11_DistX
Neighborhood_11_DistY
Neighborhood_12_DistX
Neighborhood_12_DistY
Neighborhood_13_DistX
Neighborhood_13_DistY
Neighborhood_14_DistX
Neighborhood_14_DistY
Neighborhood_15_DistX
Neighborhood_15_DistY
Neighborhood_16_DistX
Neighborhood_16_DistY
Neighborhood_17_DistX
Neighborhood_17_DistY
Neighborhood_18_DistX
Neighborhood_18_DistY
Neighborhood_19_DistX
Neighborhood_19_DistY
Neighborhood_1_DistX
Neighborhood_1_DistY
Neighborhood_20_DistX
Neighborhood_20_DistY
Neighborhood_21_DistX
Neighborhood_21_DistY
Neighborhood_22_DistX
Neighborhood_22_DistY
Neighborhood_23_DistX
Neighborhood_23_DistY
Neighborhood_2_DistX
Neighborhood_2_DistY
Neighborhood_3_DistX
Neighborhood_3_DistY
Neighborhood_4_DistX
Neighborhood_4_DistY
Neighborhood_5_DistX
Neighborhood_5_DistY
Neighborhood_6_DistX
Neighborhood_6_DistY
Neighborhood_7_DistX
Neighborhood_7_DistY
Neighborhood_8_DistX
Neighborhood_8_DistY
Neighborhood_9_DistX
Neighborhood_9_DistY
Warehouse_X
Warehouse_Y
End
