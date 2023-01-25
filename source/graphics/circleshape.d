module graphics.circleshape;

import graphics.shape;
import system.vector2f;
import std.math;

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

        Vector2f getPoint(size_t index)  {
            float angle = index * 2 * PI / _pointCount - PI / 2;
            return Vector2f(_radius + cos(angle) * _radius, _radius + sin(angle) * _radius);
        }
    }

    private {
        float _radius = 0;
        size_t _pointCount;
    }
}