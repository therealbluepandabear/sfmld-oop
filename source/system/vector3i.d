module system.vector3i;

struct Vector3i {
    float x;
    float y;
    float z;

    Vector3i opBinary(string op)(Vector3i rhs) {
        static if (op == "*") {
            return Vector3i(x * rhs.x, y * rhs.y, z * rhs.z);
        } else static if (op == "/") {
            return Vector3i(x / rhs.x, y / rhs.y, z / rhs.z);
        }
    }
}
