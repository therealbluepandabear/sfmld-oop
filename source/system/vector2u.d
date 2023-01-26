module system.vector2u;

import bindbc.sfml;

struct Vector2u {
    uint x;
    uint y;

    Vector2u opBinary(string op)(Vector2u rhs) {
        static if (op == "*") {
            return Vector2u(x * rhs.x, y * rhs.y);
        } else static if (op == "/") {
            return Vector2u(x / rhs.x, y / rhs.y);
        }
    }
}
