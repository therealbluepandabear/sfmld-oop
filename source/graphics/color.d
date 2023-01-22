module graphics.color;

import bindbc.sfml;

struct Color {
    this(uint red, uint green, uint blue, uint alpha) {
        ptr = sfColor(red, green, blue, alpha);
    }

    private sfColor ptr;
}
