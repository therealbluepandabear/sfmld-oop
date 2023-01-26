module graphics.transformable;

import bindbc.sfml;
import system.vector2;
import converters;

class Transformable {
    this() {
        ptr = sfTransformable_create();
    }

    void setPosition(float x, float y) {
        _position = Vector2f(x, y);

        updateTransform();
    }

    void setPosition(Vector2f position) {
        _position = position;

        updateTransform();
    }

    void setRotation(float angle) {
        _rotation = angle;

        updateTransform();
    }

    void setScale(float factorX, float factorY) {
        _scale = Vector2f(factorX, factorY);

        updateTransform();
    }

    void setScale(Vector2f factors) {
        _scale = factors;

        updateTransform();
    }

    void setOrigin(float x, float y) {
        _origin = Vector2f(x, y);

        updateTransform();
    }

    void setOrigin(Vector2f origin) {
        _origin = origin;

        updateTransform();
    }

    Vector2f getPosition() {
        return _position;
    }

    float getRotation() {
        return _rotation;
    }

    Vector2f getScale() {
        return _scale;
    }

    Vector2f getOrigin() {
        return _origin;
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

    private {
        void updateTransform() {
            _transformNeedsUpdate = true;
            _inverseTransformNeedsUpdate = true;
        }

        sfTransformable* ptr;
        Vector2f _origin;
        Vector2f _position;
        float _rotation;
        Vector2f _scale = Vector2f(1, 1);
        bool _transformNeedsUpdate;
        bool _inverseTransformNeedsUpdate;
    }
}
