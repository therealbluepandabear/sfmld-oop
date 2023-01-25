module graphics.transformable;

import bindbc.sfml;
import system.vector2f;
import converters;

class Transformable {
    this() {
        ptr = sfTransformable_create();
    }

    void setPosition(float x, float y) {
        ptr.sfTransformable_setPosition(sfVector2f(x, y));
    }

    void setPosition(Vector2f position) {
        ptr.sfTransformable_setPosition(position.to_sfVector2f());
    }

    void setRotation(float angle) {
        ptr.sfTransformable_setRotation(angle);
    }

    void setScale(float factorX, float factorY) {
        ptr.sfTransformable_setScale(sfVector2f(factorX, factorY));
    }

    void setScale(Vector2f factors) {
        ptr.sfTransformable_setScale(factors.to_sfVector2f());
    }

    void setOrigin(float x, float y) {
        ptr.sfTransformable_setOrigin(sfVector2f(x, y));
    }

    void setOrigin(Vector2f origin) {
        ptr.sfTransformable_setOrigin(origin.to_sfVector2f());
    }

    Vector2f getPosition() {
        return ptr.sfTransformable_getPosition().toVector2f();
    }

    float getRotation() {
        return ptr.sfTransformable_getRotation();
    }

    Vector2f getScale() {
        return ptr.sfTransformable_getScale().toVector2f();
    }

    Vector2f getOrigin() {
        return ptr.sfTransformable_getOrigin().toVector2f();
    }

    void move(float offsetX, float offsetY) {
        ptr.sfTransformable_move(sfVector2f(offsetX, offsetY));
    }

    void move(Vector2f offset) {
        ptr.sfTransformable_move(offset.to_sfVector2f());
    }

    void rotate(float angle) {
        ptr.sfTransformable_rotate(angle);
    }

    void scale(float factorX, float factorY) {
        ptr.sfTransformable_scale(sfVector2f(factorX, factorY));
    }

    void scale(Vector2f factor) {
        ptr.sfTransformable_scale(factor.to_sfVector2f());
    }

    sfTransform getTransform() {
        return ptr.sfTransformable_getTransform();
    }

    sfTransform getInverseTransform() {
        return ptr.sfTransformable_getInverseTransform();
    }

    private sfTransformable* ptr;
}
