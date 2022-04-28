import math
from typing import List
from pulp import const, LpProblem, LpMinimize, LpVariable, lpSum, PULP_CBC_CMD
from parse_data import load_points, Neighborhood

B = 99999
neighborhoods = load_points()

prob: LpProblem = LpProblem('Double_Facility_Problem', LpMinimize)

# Create decision variables, again.
# This time, because we have two warehouses, we need (u1, v1) and (u2, v2).
u1 = LpVariable('u_1', lowBound=0, cat=const.LpInteger)
v1 = LpVariable('v_1', lowBound=0, cat=const.LpInteger)
u2 = LpVariable('u_2', lowBound=0, cat=const.LpInteger)
v2 = LpVariable('v_2', lowBound=0, cat=const.LpInteger)

# Variables from neighborhood k to facility 1
d_xk_to_f1: List[LpVariable] = []
d_yk_to_f1: List[LpVariable] = []

# Variables from neighborhood k to facility 2
d_xk_to_f2: List[LpVariable] = []
d_yk_to_f2: List[LpVariable] = []

# Variable for the distance from neighborhood k to the nearest facility
k_to_nearest: List[LpVariable] = []

# Binary variable that states, for a given neighborhood k, which facility
# is closest
g_k: List[LpVariable] = []

for i in range(len(neighborhoods)):
    d_xk_to_f1.append(LpVariable(f'd_x{i}→1', lowBound=0, cat=const.LpInteger))
    d_yk_to_f1.append(LpVariable(f'd_y{i}→1', lowBound=0, cat=const.LpInteger))
    d_xk_to_f2.append(LpVariable(f'd_x{i}→2', lowBound=0, cat=const.LpInteger))
    d_yk_to_f2.append(LpVariable(f'd_y{i}→2', lowBound=0, cat=const.LpInteger))
    k_to_nearest.append(LpVariable(f'E_{i}', lowBound=1, cat=const.LpInteger))
    g_k.append(LpVariable(f'g_{i}', lowBound=0, upBound=1, cat=const.LpBinary))

# First, give objective function: sum of delta_k
prob += lpSum(k_to_nearest)

# Now, add the constraints for each neighborhood.
for k, nh in enumerate(neighborhoods):
    prob += nh.x - u1 <= d_xk_to_f1[k]
    prob += -(nh.x - u1) <= d_xk_to_f1[k]
    prob += nh.y - v1 <= d_yk_to_f1[k]
    prob += -(nh.y - v1) <= d_yk_to_f1[k]
    prob += d_xk_to_f1[k] + d_yk_to_f1[k] >= 1

    prob += nh.x - u2 <= d_xk_to_f2[k]
    prob += -(nh.x - u2) <= d_xk_to_f2[k]
    prob += nh.y - v2 <= d_yk_to_f2[k]
    prob += -(nh.y - v2) <= d_yk_to_f2[k]
    prob += d_xk_to_f2[k] + d_yk_to_f2[k] >= 1

    prob += nh.p * d_xk_to_f1[k] + nh.p * d_yk_to_f1[k] - B * g_k[k] <= k_to_nearest[k]
    prob += nh.p * d_xk_to_f2[k] + nh.p * d_yk_to_f2[k] - B * (1 - g_k[k]) <= k_to_nearest[k]


print(len(prob.variables()), 'variables')
print(len(prob.constraints), 'constraints')
prob.writeLP('TwoFacility.lp')
print("Solving program...")
prob.solve(PULP_CBC_CMD(msg=True))

# Objective value is 3812.0
# Optimal locations are (6.0, 9.0) and (16.0, 10.0)
print(f'Optimal locations are ({u1.varValue}, {v1.varValue}) and ({u2.varValue}, {v2.varValue})')