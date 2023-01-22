module graphics.color;

import bindbc.sfml;

struct Color {
    this(ubyte red, ubyte green, ubyte blue, ubyte alpha) {
        ptr = sfColor(red, green, blue, alpha);
    }

    static const(Color) Black = Color(0, 0, 0, 255);
    static const(Color) White = Color(255, 255, 255, 255);
    static const(Color) Red = Color(255, 0, 0, 255);
    static const(Color) Green = Color(0, 255, 0, 255);
    static const(Color) Blue = Color(0, 0, 255, 255);
    static const(Color) Yellow = Color(255, 255, 0, 255);
    static const(Color) Magenta = Color(255, 0, 255, 255);
    static const(Color) Cyan = Color(0, 255, 255, 255);
    static const(Color) transparent = Color(0, 0, 0, 0);

    private sfColor ptr;
}
