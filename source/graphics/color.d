module graphics.color;

import bindbc.sfml;
import std.algorithm.comparison;

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

    uint toInteger() {
        return cast(uint)((red << 24) | (green << 16) | (blue << 8) | alpha);
    }

    Color opBinary(string op)(Color rhs) {
        static if (op == "+") {
            return Color(
                cast(ubyte)(min(red + rhs.red, 255)),
                cast(ubyte)(min(green + rhs.green, 255)),
                cast(ubyte)(min(blue + rhs.blue, 255)),
                cast(ubyte)(min(alpha + rhs.alpha, 255))
            );
        } else static if (op == "-") {
            return Color(
                cast(ubyte)(max(red - rhs.red, 0)),
                cast(ubyte)(max(green - rhs.green, 0)),
                cast(ubyte)(max(blue - rhs.blue, 0)),
                cast(ubyte)(max(alpha - rhs.alpha, 0))
            );
        } else static if (op == "*") {
            return Color(
                cast(ubyte)((red * rhs.red) / 255),
                cast(ubyte)((green * rhs.green) / 255),
                cast(ubyte)((blue * rhs.blue) / 255),
                cast(ubyte)((alpha * rhs.alpha) / 255)
            );
        }
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
    Color color = Color(0x4D4359ff);

    assert(color.red == 77 && color.green == 67 && color.blue == 89 && color.alpha == 255);
}

unittest {
    Color color = Color(98, 12, 43, 255);

    assert(color.toInteger() == 0x620C2Bff);
}

mixin(unitTestPassed);
