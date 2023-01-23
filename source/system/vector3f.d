module system.vector3f;

import bindbc.sfml;

struct Vector3f {
    float x;
    float y;
    float z;
}

Vector3f toVector3f(sfVector3f vector) {
    return Vector3f(
        vector.x,
        vector.y,
        vector.z
    );
}