
from typing import List, Tuple
from parse_data import Neighborhood, load_points

def draw_neighborhood(nh: Neighborhood):
    return draw_circle(nh.x, nh.y, 0.4, 'red') + '\n' + draw_text(nh.x, nh.y, nh.p, 'red')

def shade_circle(x: int, y: int, radius: float, color: str):
    return f'\\fill[{color}, opacity=0.4] ({x},{y}) circle ({radius});'

def draw_circle(x: int, y: int, radius: float, color: str):
    return f'\\draw[{color}] ({x},{y}) circle ({radius});'

def draw_text(x: int, y: int, text: str, color: str):
    return f'\\draw[{color}] ({x},{y}) node {{{text}}};'

def draw_facility(x: int, y: int):
    return shade_circle(x, y, 0.4, 'green') + '\n' + draw_circle(x, y, 0.4, 'green')

neighborhoods = load_points()

def make_diagram(facilities: List[Tuple[int, int]]):
    content = ''
    for x in range(24):
        for y in range(18):
            nh = next((nh for nh in neighborhoods if nh.x == x and nh.y == y), None)
            if nh is None: content += draw_circle(x, y, 0.4, 'gray') + '\n'
            else: content += draw_neighborhood(nh) + '\n'

    content += '\n% Facilities\n'
    for x, y in facilities:
        content += draw_facility(x, y) + '\n'

    stuff = '\\begin{tikzpicture}[scale=0.5, font=\\tiny]\n' + \
        content + \
        '\\end{tikzpicture}'

    return stuff

diagram_one_facility = make_diagram([(14, 9)])

diagram_two_facility = make_diagram([(16, 10), (6, 9)])

print(diagram_one_facility)
print(diagram_two_facility)