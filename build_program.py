from pulp import const, LpProblem, LpMinimize, LpVariable, lpSum
from parse_data import load_points, Neighborhood

neighborhoods = load_points()

prob = LpProblem("Single_Warehouse_Problem", LpMinimize)

# Create our decision variables.
# We need u and v (the coordinates of the warehouse)...
u = LpVariable("Warehouse_X", lowBound=0, cat=const.LpInteger)
v = LpVariable("Warehouse_Y", lowBound=0, cat=const.LpInteger)

# ...as well as an x and y slack variable, for each neighborhood.
for i, nh in enumerate(neighborhoods):
    nh.dx = LpVariable(f'Neighborhood_{i}_DistX', cat=const.LpInteger)
    nh.dy = LpVariable(f'Neighborhood_{i}_DistY', cat=const.LpInteger)

# Create the objective function. For each neighborhood, we need the
# neighborhood's population multiplied by its distance to the warehouse
# location.
prob += lpSum([nh.p * nh.dx + nh.p * nh.dy for nh in neighborhoods]), "Total_Walking_Distance"

# Finally, for each neighborhood, we need to add several constraints.
for i, nh in enumerate(neighborhoods):
    prob += nh.x - u - nh.dx <= 0, f'Neighborhood_{i}_X_UB'
    prob += -nh.x + u - nh.dx <= 0, f'Neighborhood_{i}_X_LB'
    prob += nh.y - v - nh.dy <= 0, f'Neighborhood_{i}_Y_UB'
    prob += -nh.y + v - nh.dy <= 0, f'Neighborhood_{i}_Y_LB'
    prob += -nh.dx - nh.dy + 1 <= 0, f'Neighborhood_{i}_Prevent_Build'

prob.writeLP('SingleWarehouse.lp')
prob.solve()

print(f'Optimal location is ({u.varValue}, {v.varValue})')