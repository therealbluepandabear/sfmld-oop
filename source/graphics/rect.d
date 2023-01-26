module graphics.rect;

import std.traits;

struct Rect(T) if (isNumeric!(T)) {
    T left = 0;
    T top = 0;
    T width = 0;
    T height = 0;
}

alias FloatRect = Rect!(float);
alias IntRect = Rect!(int);