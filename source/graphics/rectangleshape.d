module graphics.rectangleshape;

import graphics.shape;
import system.vector2f;
import bindbc.sfml;

class RectangleShape : Shape {
    this(Vector2f size) {
        _size = size;
        setSize(_size);
    }

    Vector2f getSize() {
        return _size;
    }

    void setSize(Vector2f size) {
        _size = size;
    }

    size_t getPointCount() {
        return 4;
    }

    override Vector2f getPoint(size_t index) {
        final switch (index) {
            case 0: return Vector2f(0, 0);
            case 1: return Vector2f(_size.x, 0);
            case 2: return Vector2f(_size.x, _size.y);
            case 3: return Vector2f(0, _size.y);
        }
    }

    private {
        Vector2f _size;
    }
}