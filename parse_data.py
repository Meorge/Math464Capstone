import csv
from dataclasses import dataclass
from typing import List, Optional, Tuple
from pulp import LpVariable

@dataclass
class Neighborhood:
    x: int
    y: int
    p: int

    dx: Optional[LpVariable] = None
    dy: Optional[LpVariable] = None

def load_points():
    with open('CrowdMarkData.csv', newline='', encoding='utf-8-sig') as f:
        reader = csv.reader(f)
        x_values = [int(x) for x in reader.__next__()]
        y_values = [int(y) for y in reader.__next__()]
        p_values = [int(p) for p in reader.__next__()]

    points: List[Neighborhood] = []
    for i in range(len(x_values)):
        points.append(Neighborhood(x_values[i], y_values[i], p_values[i]))

    return points

def get_distances(neighborhoods: List[Neighborhood]):
    non_neighborhoods: List[Tuple[int, int, int]] = []

    for x in range(max([nh.x + 1 for nh in neighborhoods])):
        for y in range(max([nh.y + 1 for nh in neighborhoods])):
            z = 0
            should_break = False
            for nh in neighborhoods:
                # Check if there's a neighborhood at this location
                if nh.x == x and nh.y == y:
                    should_break = True
                    continue

                # Get the z value
                z += nh.p * (abs(nh.x - x) + abs(nh.y - y))

            if should_break: continue
            non_neighborhoods.append((x, y, z))


    best_score = min([i[2] for i in non_neighborhoods])
    worst_score = max([i[2] for i in non_neighborhoods])

    inv_lerped = [(i[0], i[1], (i[2] - best_score) / (worst_score - best_score)) for i in non_neighborhoods]

    return inv_lerped