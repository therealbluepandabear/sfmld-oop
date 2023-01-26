module system.vector2;

import std.traits;

struct Vector2(T) if (isNumeric!(T)) {
    T x;
    T y;

    this(T x, T y) {
        this.x = x;
        this.y = y;
    }

    Vector2 opBinary(string op)(Vector2 rhs) {
        static if (op == "*") {
            return Vector2(x * rhs.x, y * rhs.y);
        } else static if (op == "/") {
            return Vector2(x / rhs.x, y / rhs.y);
        } else static if (op == "+") {
            return Vector2(x + rhs.x, y + rhs.y);
        } else static if (op == "-") {
            return Vector2(x - rhs.x, y - rhs.y);
        }
    }
}

alias Vector2f = Vector2!(float);
alias Vector2i = Vector2!(int);
alias Vector2u = Vector2!(uint);
