module system.vector2f;

import bindbc.sfml;

struct Vector2f {
    float x;
    float y;

    Vector2f opBinary(string op)(Vector2f rhs) {
        static if (op == "*") {
            return Vector2f(x * rhs.x, y * rhs.y);
        } else static if (op == "/") {
            return Vector2f(x / rhs.x, y / rhs.y);
        }
    }
}
