module converters;

import system.vector2f;
import bindbc.sfml;

Vector2f toVector2f(sfVector2f vector) {
    return Vector2f(vector.x, vector.y);
}

Vector2f toVector2f_noThrow(sfVector2f vector) nothrow {
    return Vector2f(vector.x, vector.y);
}

sfVector2f to_sfVector2f(Vector2f vector) {
    return sfVector2f(vector.x, vector.y);
}

sfVector2f to_sfVector2f_noThrow(Vector2f vector) nothrow {
    return sfVector2f(vector.x, vector.y);
}