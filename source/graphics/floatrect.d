module graphics.floatrect;

import bindbc.sfml;

struct FloatRect {
    float left;
    float top;
    float width;
    float height;
}

FloatRect toFloatRect(sfFloatRect floatRect) {
    return FloatRect(
        floatRect.left,
        floatRect.top,
        floatRect.width,
        floatRect.height
    );
}