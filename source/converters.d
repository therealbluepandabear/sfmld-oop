module converters;

import system.vector2f;
import system.vector2u;
import system.vector3f;
import system.vector2i;
import bindbc.sfml;

Vector2f toVector2f(sfVector2f vector) {
    return Vector2f(vector.x, vector.y);
}

Vector2f toVector2f_noThrow(sfVector2f vector) nothrow {
    return Vector2f(vector.x, vector.y);
}

Vector2u toVector2u(sfVector2u vector) {
    return Vector2u(vector.x, vector.y);
}

Vector2i toVector2i(sfVector2i vector) {
    return Vector2i(vector.x, vector.y);
}

Vector3f toVector3f(sfVector3f vector) {
    return Vector3f(
        vector.x,
        vector.y,
        vector.z
    );
}

sfVector2f to_sfVector2f(Vector2f vector) {
    return sfVector2f(vector.x, vector.y);
}

sfVector2f to_sfVector2f_noThrow(Vector2f vector) nothrow {
    return sfVector2f(vector.x, vector.y);
}

sfVector2u to_sfVector2u(Vector2u vector) {
    return sfVector2u(vector.x, vector.y);
}

sfVector2i to_sfVector2i(Vector2i vector) {
    return sfVector2i(vector.x, vector.y);
}
