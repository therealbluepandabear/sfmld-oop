module system.vector2f;

import bindbc.sfml;

struct Vector2f {
    float x;
    float y;

    sfVector2f to_sfVector2f() {
        return sfVector2f(x, y);
    }

    sfVector2f to_sfVector2f_noThrow() nothrow {
        return sfVector2f(x, y);
    }
}

Vector2f toVector2f(sfVector2f vector) {
    return Vector2f(vector.x, vector.y);
}

Vector2f toVector2f_noThrow(sfVector2f vector) nothrow {
    return Vector2f(vector.x, vector.y);
}