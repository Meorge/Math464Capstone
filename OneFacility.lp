\* Facility_Problem *\
Minimize
Total_Walking_Distance: 28 d_x0 + 38 d_x1 + 29 d_x10 + 9 d_x11 + 34 d_x12
 + 23 d_x13 + 12 d_x14 + 3 d_x15 + 35 d_x16 + 40 d_x17 + 4 d_x18 + 33 d_x19
 + 35 d_x2 + 17 d_x20 + 7 d_x21 + 12 d_x22 + 31 d_x23 + 40 d_x3 + 27 d_x4
 + 7 d_x5 + 35 d_x6 + 39 d_x7 + 37 d_x8 + 23 d_x9 + 28 d_y0 + 38 d_y1
 + 29 d_y10 + 9 d_y11 + 34 d_y12 + 23 d_y13 + 12 d_y14 + 3 d_y15 + 35 d_y16
 + 40 d_y17 + 4 d_y18 + 33 d_y19 + 35 d_y2 + 17 d_y20 + 7 d_y21 + 12 d_y22
 + 31 d_y23 + 40 d_y3 + 27 d_y4 + 7 d_y5 + 35 d_y6 + 39 d_y7 + 37 d_y8
 + 23 d_y9
Subject To
Neighborhood_0_Prevent_Build: - d_x0 - d_y0 <= -1
Neighborhood_0_X_LB: - d_x0 + u <= 6
Neighborhood_0_X_UB: - d_x0 - u <= -6
Neighborhood_0_Y_LB: - d_y0 + v <= 1
Neighborhood_0_Y_UB: - d_y0 - v <= -1
Neighborhood_10_Prevent_Build: - d_x10 - d_y10 <= -1
Neighborhood_10_X_LB: - d_x10 + u <= 23
Neighborhood_10_X_UB: - d_x10 - u <= -23
Neighborhood_10_Y_LB: - d_y10 + v <= 16
Neighborhood_10_Y_UB: - d_y10 - v <= -16
Neighborhood_11_Prevent_Build: - d_x11 - d_y11 <= -1
Neighborhood_11_X_LB: - d_x11 + u <= 11
Neighborhood_11_X_UB: - d_x11 - u <= -11
Neighborhood_11_Y_LB: - d_y11 + v <= 15
Neighborhood_11_Y_UB: - d_y11 - v <= -15
Neighborhood_12_Prevent_Build: - d_x12 - d_y12 <= -1
Neighborhood_12_X_LB: - d_x12 + u <= 20
Neighborhood_12_X_UB: - d_x12 - u <= -20
Neighborhood_12_Y_LB: - d_y12 + v <= 2
Neighborhood_12_Y_UB: - d_y12 - v <= -2
Neighborhood_13_Prevent_Build: - d_x13 - d_y13 <= -1
Neighborhood_13_X_LB: - d_x13 + u <= 11
Neighborhood_13_X_UB: - d_x13 - u <= -11
Neighborhood_13_Y_LB: - d_y13 + v <= 3
Neighborhood_13_Y_UB: - d_y13 - v <= -3
Neighborhood_14_Prevent_Build: - d_x14 - d_y14 <= -1
Neighborhood_14_X_LB: - d_x14 + u <= 15
Neighborhood_14_X_UB: - d_x14 - u <= -15
Neighborhood_14_Y_LB: - d_y14 + v <= 4
Neighborhood_14_Y_UB: - d_y14 - v <= -4
Neighborhood_15_Prevent_Build: - d_x15 - d_y15 <= -1
Neighborhood_15_X_LB: - d_x15 + u <= 4
Neighborhood_15_X_UB: - d_x15 - u <= -4
Neighborhood_15_Y_LB: - d_y15 + v <= 17
Neighborhood_15_Y_UB: - d_y15 - v <= -17
Neighborhood_16_Prevent_Build: - d_x16 - d_y16 <= -1
Neighborhood_16_X_LB: - d_x16 + u <= 15
Neighborhood_16_X_UB: - d_x16 - u <= -15
Neighborhood_16_Y_LB: - d_y16 + v <= 8
Neighborhood_16_Y_UB: - d_y16 - v <= -8
Neighborhood_17_Prevent_Build: - d_x17 - d_y17 <= -1
Neighborhood_17_X_LB: - d_x17 + u <= 20
Neighborhood_17_X_UB: - d_x17 - u <= -20
Neighborhood_17_Y_LB: - d_y17 + v <= 11
Neighborhood_17_Y_UB: - d_y17 - v <= -11
Neighborhood_18_Prevent_Build: - d_x18 - d_y18 <= -1
Neighborhood_18_X_LB: - d_x18 + u <= 13
Neighborhood_18_X_UB: - d_x18 - u <= -13
Neighborhood_18_Y_LB: - d_y18 + v <= 6
Neighborhood_18_Y_UB: - d_y18 - v <= -6
Neighborhood_19_Prevent_Build: - d_x19 - d_y19 <= -1
Neighborhood_19_X_LB: - d_x19 + u <= 18
Neighborhood_19_X_UB: - d_x19 - u <= -18
Neighborhood_19_Y_LB: - d_y19 + v <= 9
Neighborhood_19_Y_UB: - d_y19 - v <= -9
Neighborhood_1_Prevent_Build: - d_x1 - d_y1 <= -1
Neighborhood_1_X_LB: - d_x1 + u <= 13
Neighborhood_1_X_UB: - d_x1 - u <= -13
Neighborhood_1_Y_LB: - d_y1 + v <= 15
Neighborhood_1_Y_UB: - d_y1 - v <= -15
Neighborhood_20_Prevent_Build: - d_x20 - d_y20 <= -1
Neighborhood_20_X_LB: - d_x20 + u <= 16
Neighborhood_20_X_UB: - d_x20 - u <= -16
Neighborhood_20_Y_LB: - d_y20 + v <= 7
Neighborhood_20_Y_UB: - d_y20 - v <= -7
Neighborhood_21_Prevent_Build: - d_x21 - d_y21 <= -1
Neighborhood_21_X_LB: - d_x21 + u <= 2
Neighborhood_21_X_UB: - d_x21 - u <= -2
Neighborhood_21_Y_LB: - d_y21 + v <= 6
Neighborhood_21_Y_UB: - d_y21 - v <= -6
Neighborhood_22_Prevent_Build: - d_x22 - d_y22 <= -1
Neighborhood_22_X_LB: - d_x22 + u <= 18
Neighborhood_22_X_UB: - d_x22 - u <= -18
Neighborhood_22_Y_LB: - d_y22 + v <= 10
Neighborhood_22_Y_UB: - d_y22 - v <= -10
Neighborhood_23_Prevent_Build: - d_x23 - d_y23 <= -1
Neighborhood_23_X_LB: - d_x23 + u <= 14
Neighborhood_23_X_UB: - d_x23 - u <= -14
Neighborhood_23_Y_LB: - d_y23 + v <= 10
Neighborhood_23_Y_UB: - d_y23 - v <= -10
Neighborhood_2_Prevent_Build: - d_x2 - d_y2 <= -1
Neighborhood_2_X_LB: - d_x2 + u <= 9
Neighborhood_2_X_UB: - d_x2 - u <= -9
Neighborhood_2_Y_LB: - d_y2 + v <= 9
Neighborhood_2_Y_UB: - d_y2 - v <= -9
Neighborhood_3_Prevent_Build: - d_x3 - d_y3 <= -1
Neighborhood_3_X_LB: - d_x3 + u <= 14
Neighborhood_3_X_UB: - d_x3 - u <= -14
Neighborhood_3_Y_LB: - d_y3 + v <= 13
Neighborhood_3_Y_UB: - d_y3 - v <= -13
Neighborhood_4_Prevent_Build: - d_x4 - d_y4 <= -1
Neighborhood_4_X_LB: - d_x4 + u <= 15
Neighborhood_4_X_UB: - d_x4 - u <= -15
Neighborhood_4_Y_LB: - d_y4 + v <= 15
Neighborhood_4_Y_UB: - d_y4 - v <= -15
Neighborhood_5_Prevent_Build: - d_x5 - d_y5 <= -1
Neighborhood_5_X_LB: - d_x5 + u <= 2
Neighborhood_5_X_UB: - d_x5 - u <= -2
Neighborhood_5_Y_LB: - d_y5 + v <= 13
Neighborhood_5_Y_UB: - d_y5 - v <= -13
Neighborhood_6_Prevent_Build: - d_x6 - d_y6 <= -1
Neighborhood_6_X_LB: - d_x6 + u <= 1
Neighborhood_6_X_UB: - d_x6 - u <= -1
Neighborhood_6_Y_LB: - d_y6 + v <= 16
Neighborhood_6_Y_UB: - d_y6 - v <= -16
Neighborhood_7_Prevent_Build: - d_x7 - d_y7 <= -1
Neighborhood_7_X_LB: - d_x7 + u <= 20
Neighborhood_7_X_UB: - d_x7 - u <= -20
Neighborhood_7_Y_LB: - d_y7 + v <= 7
Neighborhood_7_Y_UB: - d_y7 - v <= -7
Neighborhood_8_Prevent_Build: - d_x8 - d_y8 <= -1
Neighborhood_8_X_LB: - d_x8 + u <= 6
Neighborhood_8_X_UB: - d_x8 - u <= -6
Neighborhood_8_Y_LB: - d_y8 + v <= 14
Neighborhood_8_Y_UB: - d_y8 - v <= -14
Neighborhood_9_Prevent_Build: - d_x9 - d_y9 <= -1
Neighborhood_9_X_LB: - d_x9 + u <= 6
Neighborhood_9_X_UB: - d_x9 - u <= -6
Neighborhood_9_Y_LB: - d_y9 + v <= 8
Neighborhood_9_Y_UB: - d_y9 - v <= -8
Bounds
 d_x0 free
 d_x1 free
 d_x10 free
 d_x11 free
 d_x12 free
 d_x13 free
 d_x14 free
 d_x15 free
 d_x16 free
 d_x17 free
 d_x18 free
 d_x19 free
 d_x2 free
 d_x20 free
 d_x21 free
 d_x22 free
 d_x23 free
 d_x3 free
 d_x4 free
 d_x5 free
 d_x6 free
 d_x7 free
 d_x8 free
 d_x9 free
 d_y0 free
 d_y1 free
 d_y10 free
 d_y11 free
 d_y12 free
 d_y13 free
 d_y14 free
 d_y15 free
 d_y16 free
 d_y17 free
 d_y18 free
 d_y19 free
 d_y2 free
 d_y20 free
 d_y21 free
 d_y22 free
 d_y23 free
 d_y3 free
 d_y4 free
 d_y5 free
 d_y6 free
 d_y7 free
 d_y8 free
 d_y9 free
 0 <= u
 0 <= v
Generals
d_x0
d_x1
d_x10
d_x11
d_x12
d_x13
d_x14
d_x15
d_x16
d_x17
d_x18
d_x19
d_x2
d_x20
d_x21
d_x22
d_x23
d_x3
d_x4
d_x5
d_x6
d_x7
d_x8
d_x9
d_y0
d_y1
d_y10
d_y11
d_y12
d_y13
d_y14
d_y15
d_y16
d_y17
d_y18
d_y19
d_y2
d_y20
d_y21
d_y22
d_y23
d_y3
d_y4
d_y5
d_y6
d_y7
d_y8
d_y9
u
v
End
