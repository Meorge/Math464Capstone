from PyQt6.QtWidgets import QWidget, QApplication
from PyQt6.QtGui import QPaintEvent, QPainter, QColorConstants, QColor
from PyQt6.QtCore import QRect, QRectF, Qt, QSizeF
from sys import argv

from typing import List
from parse_data import Neighborhood, load_points

GRID_SIZE = 30
RADIUS = 12.0

DARK_COLOR = QColor(0x404040)

class MainWindow(QWidget):
    neighborhoods: List[Neighborhood]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.neighborhoods = load_points()
        self.max_x = max([nh.x for nh in self.neighborhoods])
        self.max_y = max([nh.y for nh in self.neighborhoods])

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

            for x in range(self.max_x + 1):
                for y in range(self.max_y + 1):
                    self.drawEmptySpace(x, y, painter)

            for nh in self.neighborhoods:
                self.drawNeighborhoodSpace(nh, painter)

            self.drawActiveSpace(14, 9, painter)


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

    def drawActiveSpace(self, x: int, y: int, painter: QPainter):
        r = self.getRectForSpace(x, y)
        painter.setBrush(Qt.GlobalColor.red)
        painter.setPen(Qt.GlobalColor.darkRed)
        painter.drawEllipse(r)


if __name__ == "__main__":
    app = QApplication(argv)
    window = MainWindow()
    window.show()
    exit(app.exec())