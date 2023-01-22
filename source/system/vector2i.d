module system.vector2i;

import bindbc.sfml;

struct Vector2i {
    int x;
    int y;

    sfVector2i to_sfVector2i() {
        return sfVector2i(x, y);
    }
}

Vector2i toVector2i(sfVector2i vector) {
    return Vector2i(vector.x, vector.y);
}
