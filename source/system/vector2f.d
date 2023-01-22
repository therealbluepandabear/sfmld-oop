module system.vector2f;

import bindbc.sfml;

struct Vector2f {
    float x;
    float y;

    sfVector2f to_sfVector2f() {
        return sfVector2f(x, y);
    }
}

Vector2f toVector2f(sfVector2f vector) {
    return Vector2f(vector.x, vector.y);
}