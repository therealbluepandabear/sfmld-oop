module system.vector3;

import bindbc.sfml;
import std.traits;

struct Vector3(T) if (isNumeric!(T)) {
    T x = 0;
    T y = 0;
    T z = 0;

    this(T x, T y, T z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    this(U)(Vector3!(U) vector) {
        x = cast(T)vector.x;
        y = cast(T)vector.y;
        z = cast(T)vector.z;
    }

    Vector3 opBinary(string op)(Vector3 rhs) {
        static if (op == "*") {
            return Vector3(x * rhs.x, y * rhs.y, z * rhs.z);
        } else static if (op == "/") {
            return Vector3(x / rhs.x, y / rhs.y, z / rhs.z);
        } else static if (op == "+") {
            return Vector3(x + rhs.x, y + rhs.y, z + rhs.y);
        } else static if (op == "-") {
            return Vector3(x - rhs.x, y - rhs.y, z - rhs.z);
        }
    }
}

alias Vector3f = Vector3!(float);
alias Vector3i = Vector3!(int);
