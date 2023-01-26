module graphics.rectangleshape;

import graphics.shape;
import graphics.color;
import system.vector2;
import bindbc.sfml;
import internal.converters;

class RectangleShape : Shape {
    this(Vector2f size) {
        _size = size;
        setSize(_size);

        update();
    }

    Vector2f getSize() {
        return _size;
    }

    void setSize(Vector2f size) {
        _size = size;
    }

    override {
        size_t getPointCount() {
            return 4;
        }

        Vector2f getPoint(size_t index) {
            final switch (index) {
                case 0: return Vector2f(0, 0);
                case 1: return Vector2f(_size.x, 0);
                case 2: return Vector2f(_size.x, _size.y);
                case 3: return Vector2f(0, _size.y);
            }
        }

        void setPosition(Vector2f position) {
            ptr.sfShape_setPosition(position.to_sfVector2f());

            update();
        }
    }

    private Vector2f _size;
}