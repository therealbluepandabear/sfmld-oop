module graphics.circleshape;

import graphics.shape;
import system.vector2f;
import std.math;
import bindbc.sfml;

class CircleShape : Shape {
    this(float radius = 0, size_t pointCount = 30) {
        _radius = radius;
        _pointCount = pointCount;

        ptr.sfShape_update();
    }

    void setRadius(float radius) {
        _radius = radius;

        ptr.sfShape_update();
    }

    void setPointCount(size_t pointCount) {
        _pointCount = pointCount;

        ptr.sfShape_update();
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

            float x = cos(angle) * _radius;
            float y = sin(angle) * _radius;

            return Vector2f(_radius + x, _radius + y);
        }
    }

    private {
        float _radius = 0;
        size_t _pointCount;
    }
}