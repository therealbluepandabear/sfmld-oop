module system.vector2f;

struct Vector2f {
    float x;
    float y;

    private sfVector2f to_sfVector2f() {
        return sfVector2f(x, y);
    }
}

private Vector2f toVector2f(sfVector2f vector) {
    return Vector2f(vector.x, vector.y);
}