module graphics.rect;

import std.traits;
import system.vector2;

struct Rect(T) if (isNumeric!(T)) {
    T left;
    T top;
    T width;
    T height;

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
}

alias FloatRect = Rect!(float);
alias IntRect = Rect!(int);