module graphics.convexshape;

import graphics.shape;
import system.vector2;

class ConvexShape : Shape {
    this(size_t pointCount = 0) {
        setPointCount(pointCount);
    }

    void setPointCount(size_t pointCount) {
        _points.length = pointCount;
        update();
    }

    void setPoint(size_t index, Vector2f point) {
        _points[index] = point;
    }

    override {
        size_t getPointCount() {
            return _points.length;
        }

        Vector2f getPoint(size_t index) {
            return _points[index];
        }
    }

    private Vector2f[] _points;
}