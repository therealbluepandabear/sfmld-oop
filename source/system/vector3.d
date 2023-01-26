module system.vector3;

import bindbc.sfml;
import std.traits;

struct Vector3(T) if (isNumeric!(T)) {
    T x;
    T y;
    T z;

    this(T x, T y, T z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    Vector3 opBinary(string op)(Vector3 rhs) {
        static if (op == "*") {
            return Vector3(x * rhs.x, y * rhs.y, z * rhs.z);
        } else static if (op == "/") {
            return Vector3(x / rhs.x, y / rhs.y, z / rhs.z);
        }
    }
}

alias Vector3f = Vector3!(float);
alias Vector3i = Vector3!(int);
