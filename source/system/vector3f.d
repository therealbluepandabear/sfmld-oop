module system.vector3f;

import bindbc.sfml;

struct Vector3f {
    float x;
    float y;
    float z;

    Vector3f opBinary(string op)(Vector3f rhs) {
        static if (op == "*") {
            return Vector3f(x * rhs.x, y * rhs.y, z * rhs.z);
        } else static if (op == "/") {
            return Vector3f(x / rhs.x, y / rhs.y, z / rhs.z);
        }
    }
}