module system.vector2i;

import bindbc.sfml;

struct Vector2i {
    int x;
    int y;

    Vector2i opBinary(string op)(Vector2i rhs) {
        static if (op == "*") {
            return Vector2i(x * rhs.x, y * rhs.y);
        } else static if (op == "/") {
            return Vector2i(x / rhs.x, y / rhs.y);
        }
    }
}

