module graphics.intrect;

import bindbc.sfml;

struct IntRect {
    int left;
    int top;
    int width;
    int height;

    private sfIntRect to_sfIntRect() {
        return sfIntRect(
            left,
            top,
            width,
            height
        );
    }
}

private IntRect toIntRect(sfIntRect intRect) {
    return IntRect(
        intRect.left,
        intRect.top,
        intRect.width,
        intRect.height
    );
}