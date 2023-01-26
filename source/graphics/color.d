module graphics.color;

import bindbc.sfml;

struct Color {
    ubyte red;
    ubyte green;
    ubyte blue;
    ubyte alpha = 255;

    this(ubyte red, ubyte green, ubyte blue, ubyte alpha = 255) {
        this.red = red;
        this.green = green;
        this.blue = blue;
        this.alpha = alpha;
    }

    this(uint color) {
        red = cast(ubyte)(color >> 24);
        green = cast(ubyte)(color >> 16);
        blue = cast(ubyte)(color >> 8);
        alpha = cast(ubyte)(color);
    }

    static const(Color) Black = Color(0, 0, 0, 255);
    static const(Color) White = Color(255, 255, 255, 255);
    static const(Color) Red = Color(255, 0, 0, 255);
    static const(Color) Green = Color(0, 255, 0, 255);
    static const(Color) Blue = Color(0, 0, 255, 255);
    static const(Color) Yellow = Color(255, 255, 0, 255);
    static const(Color) Magenta = Color(255, 0, 255, 255);
    static const(Color) Cyan = Color(0, 255, 255, 255);
    static const(Color) Transparent = Color(0, 0, 0, 0);
}

import internal.testutils;

mixin(unitTestStart);

unittest {
    Color black = Color(0x4D4359ff);

    assert(black.red == 77 && black.green == 67 && black.blue == 89 && black.alpha == 255);
}

mixin(unitTestPassed);
