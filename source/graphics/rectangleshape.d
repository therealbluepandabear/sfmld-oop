module graphics.rectangleshape;

import graphics.shape;
import system.vector2f;
import bindbc.sfml;

class RectangleShape : Shape {
    this(Vector2f size) {
        _size = size;

        ptr = sfRectangleShape_create();
        setSize(_size);
    }

    Vector2f getSize() {
        return ptr.sfRectangleShape_getSize().toVector2f();
    }

    void setSize(Vector2f size) {
        ptr.sfRectangleShape_setSize(size.to_sfVector2f());
    }

    size_t getPointCount() {
        return ptr.sfRectangleShape_getPointCount();
    }

    private {
        Vector2f _size;
        sfRectangleShape* ptr;
    }
}