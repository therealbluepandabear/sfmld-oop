module graphics.rect;

import std.traits;
import system.vector2;

struct Rect(T) if (isNumeric!(T)) {
    T left = 0;
    T top = 0;
    T width = 0;
    T height = 0;

    this(T left, T top, T width, T height) {
        this.left = left;
        this.top = top;
        this.width = width;
        this.height = height;
    }

    this(Vector2!(T) position, Vector2!(T) size) {
        this.left = left;
        this.top = top;
        this.width = width;
        this.height = height;
    }

    this(U)(Rect!(U) rect) {
        this.left = cast(T)(rect.left);
        this.top = cast(T)(rect.top);
        this.width = cast(T)(rect.width);
        this.height = cast(T)(rect.height);
    }
}

alias FloatRect = Rect!(float);
alias IntRect = Rect!(int);