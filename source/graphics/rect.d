module graphics.rect;

import std.traits;

struct Rect(T) if (isNumeric!(T)) {
    T left;
    T top;
    T width;
    T height;
}

alias FloatRect = Rect!(float);
alias IntRect = Rect!(int);