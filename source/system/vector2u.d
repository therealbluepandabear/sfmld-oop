module system.vector2u;

import bindbc.sfml;

struct Vector2u {
    uint x;
    uint y;

    sfVector2u to_sfVector2u() {
        return sfVector2u(x, y);
    }
}

Vector2u toVector2u(sfVector2u vector) {
    return Vector2u(vector.x, vector.y);
}