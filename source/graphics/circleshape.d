module graphics.circleshape;

import graphics.shape;

class CircleShape : Shape {
    this(float radius = 0, size_t pointCount = 30) {
        _radius = radius;
        _pointCount = pointCount;
    }

    void setRadius(float radius) {
        _radius = radius;
    }

    void setPointCount(size_t pointCount) {
        _pointCount = pointCount;
    }

    float getRadius() {
        return _radius;
    }

    override {
        size_t getPointCount() {
            return _pointCount;
        }
    }

    private {
        float _radius = 0;
        size_t _pointCount;
    }
}