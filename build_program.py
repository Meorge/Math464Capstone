from typing import List, Tuple
from pulp import const, LpProblem, LpMinimize, LpVariable, lpSum
from parse_data import load_points, Neighborhood

neighborhoods = load_points()

def solve_one_facility():
    prob = LpProblem(f'Facility_Problem', LpMinimize)

    # Create our decision variables.
    # We need u and v (the coordinates of the warehouse)...
    u = LpVariable(f'u', lowBound=0, cat=const.LpInteger)
    v = LpVariable(f'v', lowBound=0, cat=const.LpInteger)

    # ...as well as an x and y slack variable, for each neighborhood.
    for i, nh in enumerate(neighborhoods):
        nh.dx = LpVariable(f'd_x{i}', cat=const.LpInteger)
        nh.dy = LpVariable(f'd_y{i}', cat=const.LpInteger)

    # Create the objective function. For each neighborhood, we need the
    # neighborhood's population multiplied by its distance to the facility
    # location.
    prob += lpSum([nh.p * nh.dx + nh.p * nh.dy for nh in neighborhoods]), "Total_Walking_Distance"

    # Finally, for each neighborhood, we need to add several constraints.
    for i, nh in enumerate(neighborhoods):
        prob += nh.x - u - nh.dx <= 0, f'Neighborhood_{i}_X_UB'
        prob += -nh.x + u - nh.dx <= 0, f'Neighborhood_{i}_X_LB'
        prob += nh.y - v - nh.dy <= 0, f'Neighborhood_{i}_Y_UB'
        prob += -nh.y + v - nh.dy <= 0, f'Neighborhood_{i}_Y_LB'
        prob += -nh.dx - nh.dy + 1 <= 0, f'Neighborhood_{i}_Prevent_Build'

    prob.writeLP(f'OneFacility.lp')
    prob.solve()

    print(f'Optimal location is ({u.varValue}, {v.varValue})')

def solve_two_facility():
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
    d_k_to_f1: List[LpVariable] = []

    # Variables from neighborhood k to facility 2
    d_xk_to_f2: List[LpVariable] = []
    d_yk_to_f2: List[LpVariable] = []
    d_k_to_f2: List[LpVariable] = []

    # Variable for the distance from neighborhood k to the nearest facility
    delta_k: List[LpVariable] = []

    for i in range(len(neighborhoods)):
        d_xk_to_f1.append(LpVariable(f'd_x{i}→1', cat=const.LpInteger))
        d_yk_to_f1.append(LpVariable(f'd_y{i}→1', cat=const.LpInteger))
        d_xk_to_f2.append(LpVariable(f'd_x{i}→2', cat=const.LpInteger))
        d_yk_to_f2.append(LpVariable(f'd_y{i}→2', cat=const.LpInteger))

        d_k_to_f1.append(LpVariable(f'd_{i}→1', cat=const.LpInteger))
        d_k_to_f2.append(LpVariable(f'd_{i}→2', cat=const.LpInteger))

        delta_k.append(LpVariable(f'𝛿_{i}', cat=const.LpInteger))

    # First, give objective function: sum of delta_k
    prob += lpSum(delta_k), "Walking_Distance_To_Closest_Facility"

    # Now, add the constraints for each neighborhood.
    for k, nh in enumerate(neighborhoods):
        prob += delta_k[k] >= d_k_to_f1[k]
        prob += delta_k[k] >= d_k_to_f2[k]

        prob += nh.x - u1 <= d_xk_to_f1[k]
        prob += -(nh.x - u1) <= d_xk_to_f1[k]
        prob += nh.y - v1 <= d_yk_to_f1[k]
        prob += -(nh.y - v1) <= d_yk_to_f1[k]
        prob += d_xk_to_f1[k] + d_yk_to_f1[k] >= 1
        prob += nh.p * d_xk_to_f1[k] + nh.p * d_yk_to_f1[k] == d_k_to_f1[k]

        prob += nh.x - u2 <= d_xk_to_f2[k]
        prob += -(nh.x - u2) <= d_xk_to_f2[k]
        prob += nh.y - v2 <= d_yk_to_f2[k]
        prob += -(nh.y - v2) <= d_yk_to_f2[k]
        prob += d_xk_to_f2[k] + d_yk_to_f2[k] >= 1
        prob += nh.p * d_xk_to_f2[k] + nh.p * d_yk_to_f2[k] == d_k_to_f2[k]
    

    prob.writeLP('TwoFacility.lp')
    prob.solve()

    for (_, val) in prob.constraints.items():
        print(val)

    print(f'Optimal locations are ({u1.varValue}, {v1.varValue}) and ({u2.varValue}, {v2.varValue})')




# solve_one_facility()
solve_two_facility()