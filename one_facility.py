from typing import List
from pulp import const, LpProblem, LpMinimize, LpVariable, lpSum, PULP_CBC_CMD
from parse_data import load_points, Neighborhood

neighborhoods = load_points()

prob: LpProblem = LpProblem(f'Facility_Problem', LpMinimize)

# Create our decision variables.
# We need u and v (the coordinates of the warehouse)...
u = LpVariable(f'u', lowBound=0, cat=const.LpInteger)
v = LpVariable(f'v', lowBound=0, cat=const.LpInteger)

# ...as well as an x and y distance variable, for each neighborhood.
for i, nh in enumerate(neighborhoods):
    nh.dx = LpVariable(f'd_x{i}', cat=const.LpInteger)
    nh.dy = LpVariable(f'd_y{i}', cat=const.LpInteger)

# Create the objective function. For each neighborhood, we need the
# neighborhood's population multiplied by its distance to the facility
# location.
prob += lpSum([nh.p * nh.dx + nh.p * nh.dy for nh in neighborhoods])

# Finally, for each neighborhood, we need to add several constraints.
for i, nh in enumerate(neighborhoods):
    # X distance from neighborhood to facility
    prob += nh.x - u <= nh.dx, f'Neighborhood_{i}_X_UB'
    prob += -(nh.x - u) <= nh.dx, f'Neighborhood_{i}_X_LB'

    # Y distance from neighborhood to facility
    prob += nh.y - v <= nh.dy, f'Neighborhood_{i}_Y_UB'
    prob += -(nh.y - v) <= nh.dy, f'Neighborhood_{i}_Y_LB'

    # Total distance must be greater than 0 (i.e. facility cannot be
    # built on a neighborhood)
    prob += nh.dx + nh.dy >= 1, f'Neighborhood_{i}_Prevent_Build'

# Solve the program
prob.writeLP(f'OneFacility.lp')
prob.solve(PULP_CBC_CMD(msg=True))

f = (int(u.varValue), int(v.varValue))
print(f'For one facility, optimal location is {f}')