module graphics.floatrect;

struct FloatRect {
    float left;
    float top;
    float width;
    float height;
}

private FloatRect toFloatRect(sfFloatRect floatRect) {
    return FloatRect(
        floatRect.left,
        floatRect.top,
        floatRect.width,
        floatRect.height
    );
}