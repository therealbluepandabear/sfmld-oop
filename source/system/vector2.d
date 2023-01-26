module system.vector2;

import std.traits;

struct Vector2(T) if (isNumeric!(T)) {
    T x = 0;
    T y = 0;

    this(T x, T y) {
        this.x = x;
        this.y = y;
    }

    this(U)(Vector2!(U) vector) {
        x = cast(T)(vector.x);
        y = cast(T)(vector.y);
    }

    Vector2 opBinary(string op)(T rhs) {
        static if (op == "*") {
            return Vector3(x * rhs, y * rhs);
        } else static if (op == "/") {
            return Vector3(x / rhs, y / rhs);
        }
    }

    Vector2 opBinary(string op)(Vector2 rhs) {
        static if (op == "+") {
            return Vector2(x + rhs.x, y + rhs.y);
        } else static if (op == "-") {
            return Vector2(x - rhs.x, y - rhs.y);
        }
    }
}

alias Vector2f = Vector2!(float);
alias Vector2i = Vector2!(int);
alias Vector2u = Vector2!(uint);

import internal.testutils;

mixin(unitTestStart);

unittest {
    Vector2f vector1 = Vector2f(9, 3);
    Vector2f vector2 = Vector2f(10, 1);

    assert(vector1 + vector2 == Vector2f(19, 4));
}

unittest {
    Vector2f vector1 = Vector2f(3, 4);
    Vector2f vector2 = Vector2f(12, 9);

    assert(vector1 - vector2 == Vector2f(-9, -5));
}

mixin(unitTestPassed);
