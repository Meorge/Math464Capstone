import csv
from dataclasses import dataclass
from typing import List, Optional
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