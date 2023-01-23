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

    override Vector2f getPoint(size_t index) {
        sfRectangleShape* rect = sfRectangleShape_create();
        rect.sfRectangleShape_setSize(_size.to_sfVector2f());

        return rect.sfRectangleShape_getPoint(index).toVector2f();
    }

    private {
        Vector2f _size;
    }
}