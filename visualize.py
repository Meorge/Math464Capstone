from PyQt6.QtWidgets import QWidget, QApplication
from PyQt6.QtGui import QPaintEvent, QPainter, QColor, QPen
from PyQt6.QtCore import QRect, QRectF, Qt, QSizeF, QPointF
from PyQtPlus.QtGuiPlus import QColorTools
from PyQtPlus.QtCorePlus import QInterpolationTools
from sys import argv

from typing import List, Tuple
from parse_data import Neighborhood, get_distances, load_points

GRID_SIZE = 45
RADIUS = 20

DARK_COLOR = QColor(0x404040)

BEST_COLOR = QColor(20, 215, 90)
MEDIUM_COLOR = QColor(120, 115, 0)
WORST_COLOR = QColor(100, 5, 0)

class MainWindow(QWidget):
    neighborhoods: List[Neighborhood]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.neighborhoods = load_points()
        self.max_x = max([nh.x for nh in self.neighborhoods])
        self.max_y = max([nh.y for nh in self.neighborhoods])

        self.non_neighborhoods = get_distances(self.neighborhoods)

        s = sorted(self.non_neighborhoods, key=lambda i: i[2])
        print(s)

    def getTotalBoardRect(self):
        return QSizeF(
            self.max_x * GRID_SIZE + RADIUS * 2,
            self.max_y * GRID_SIZE + RADIUS * 2)

    def getBoardRectXOffset(self):
        return self.rect().width() / 2 - self.getTotalBoardRect().width() / 2

    def getBoardRectYOffset(self):
        return self.rect().height() / 2 - self.getTotalBoardRect().height() / 2

    def paintEvent(self, a0: QPaintEvent) -> None:
        with QPainter(self) as painter:
            painter: QPainter
            painter.setRenderHint(QPainter.RenderHint.Antialiasing, True)

            # for x in range(self.max_x + 1):
            #     for y in range(self.max_y + 1):
            #         self.drawEmptySpace(x, y, painter)

            for em in self.non_neighborhoods:
                self.drawInactiveSpace(em, painter)

            for nh in self.neighborhoods:
                self.drawNeighborhoodSpace(nh, painter)

            # self.drawActiveSpace(14, 9, painter)

            # For two facilities
            self.drawActiveSpace(6, 9, painter)
            self.drawActiveSpace(16, 10, painter)


    def getRectForSpace(self, x: int, y: int):
        return QRectF(
            GRID_SIZE * x + self.getBoardRectXOffset(),
            GRID_SIZE * (self.max_y - y) + self.getBoardRectYOffset(),
            RADIUS * 2, RADIUS * 2
        )

    def drawEmptySpace(self, x: int, y: int, painter: QPainter):
        r = self.getRectForSpace(x, y)
        painter.setBrush(DARK_COLOR)
        painter.setPen(Qt.GlobalColor.transparent)
        painter.drawEllipse(r)

    def drawNeighborhoodSpace(self, nh: Neighborhood, painter: QPainter):
        r = self.getRectForSpace(nh.x, nh.y)
        painter.setBrush(Qt.GlobalColor.darkGray)
        painter.setPen(Qt.GlobalColor.lightGray)
        painter.drawEllipse(r)
        painter.setPen(Qt.GlobalColor.white)
        painter.drawText(r, Qt.AlignmentFlag.AlignCenter, f'{nh.p}')

    def drawInactiveSpace(self, space: Tuple[int, int, float], painter: QPainter):
        r = self.getRectForSpace(space[0], space[1])
        p = space[2]

        if p >= 0.5:
            remapped_p = QInterpolationTools.remap(0.5, 1.0, 0.0, 1.0, p)
            color = QColorTools.lerp(MEDIUM_COLOR, WORST_COLOR, remapped_p)
        else:
            remapped_p = QInterpolationTools.remap(0.0, 0.5, 0.0, 1.0, p)
            color = QColorTools.lerp(BEST_COLOR, MEDIUM_COLOR, remapped_p)

        painter.setBrush(color)
        painter.setPen(Qt.GlobalColor.transparent)
        painter.drawEllipse(r)
        painter.setPen(Qt.GlobalColor.white)
        painter.drawText(r, Qt.AlignmentFlag.AlignCenter, f'{p:.2f}')
        
    def drawActiveSpace(self, x: int, y: int, painter: QPainter):
        r = self.getRectForSpace(x, y)
        painter.setBrush(Qt.GlobalColor.transparent)
        painter.setPen(QPen(Qt.GlobalColor.red, 2.0))
        painter.drawEllipse(r)


if __name__ == "__main__":
    app = QApplication(argv)
    window = MainWindow()
    window.show()
    exit(app.exec())