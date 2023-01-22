module wrappers;

import bindbc.sfml;

struct Vector2i {
    int x;
    int y;
}

private Vector2f toVector2f(sfVector2f vector) {
    return Vector2f(vector.x, vector.y);
}

private FloatRect toFloatRect(sfFloatRect floatRect) {
    return FloatRect(
        floatRect.left,
        floatRect.top,
        floatRect.width,
        floatRect.height
    );
}

private IntRect toIntRect(sfIntRect intRect) {
    return IntRect(
        intRect.left,
        intRect.top,
        intRect.width,
        intRect.height
    );
}

struct Vector2f {
    float x;
    float y;

    private sfVector2f to_sfVector2f() {
        return sfVector2f(x, y);
    }
}

struct Vector2u {
    uint x;
    uint y;
}

struct Vector3i {
    int x;
    int y;
    int z;
}

struct Vector3f {
    float x;
    float y;
    float z;
}

struct FloatRect {
    float left;
    float top;
    float width;
    float height;
}

struct IntRect {
    int left;
    int top;
    int width;
    int height;

    private sfIntRect to_sfIntRect() {
        return sfIntRect(
            left,
            top,
            width,
            height
        );
    }
}

class RenderStates {
    this(sfBlendMode blendMode) {
    }

    this(sfTransform transform) {
    }

    this(sfTexture* texture) {

    }

    this(sfShader* shader) {

    }

    this(
        sfBlendMode blendMode,
        sfTransform transform,
        sfTexture* texture,
        sfShader* shader
    ) {

    }

    sfBlendMode blendMode;

    sfTransform transform;

    sfTexture* texture;
}

interface RenderTarget {
    void clear(sfColor color);

    void setView(sfView* view);

    sfView* getView();

    sfView* getDefaultView();

    IntRect getViewport(sfView* view);

    Vector2f mapPixelToCoords(Vector2i point);

    Vector2f mapPixelToCoords(Vector2i point, sfView* view);

    void draw(Drawable drawable, RenderStates states);

    void pushGLStates();

    void popGLStates();

    void resetGLStates();
}

interface Drawable {
    void draw(RenderTarget target, RenderStates states);
}

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

class Shape : Transformable, Drawable {
    override void draw(RenderTarget target, RenderStates states) {
    }

    void setTexture(sfTexture* texture, bool resetRect) {
        ptr.sfShape_setTexture(texture, resetRect);
    }

    void setTextureRect(IntRect rect) {
        ptr.sfShape_setTextureRect(rect.to_sfIntRect());
    }

    void setFillColor(sfColor color) {
        ptr.sfShape_setFillColor(color);
    }

    void setOutlineColor(sfColor color) {
        ptr.sfShape_setOutlineColor(color);
    }

    void setOutlineThickness(float thickness) {
        ptr.sfShape_setOutlineThickness(thickness);
    }

    const(sfTexture)* getTexture() {
        return ptr.sfShape_getTexture();
    }

    IntRect getTextureRect() {
        return ptr.sfShape_getTextureRect().toIntRect();
    }

    sfColor getFillColor() {
        return ptr.sfShape_getFillColor();
    }

    sfColor getOutlineColor() {
        return ptr.sfShape_getOutlineColor();
    }

    float getOutlineThickness() {
        return ptr.sfShape_getOutlineThickness();
    }

    Vector2f getPoint(size_t index) {
        return ptr.sfShape_getPoint(index).toVector2f();
    }

    FloatRect getLocalBounds() {
        return ptr.sfShape_getLocalBounds().toFloatRect();
    }

    FloatRect getGlobalBounds() {
        return ptr.sfShape_getGlobalBounds().toFloatRect();
    }

    private sfShape* ptr;
}

class RectangleShape : Shape {
    this(Vector2f size) {
        _size = size;

        ptr = sfRectangleShape_create();
        setSize(_size);
    }

    Vector2f getSize() {
        return ptr.sfRectangleShape_getSize().toVector2f();
    }

    void setSize(Vector2f size) {
        ptr.sfRectangleShape_setSize(size.to_sfVector2f());
    }

    size_t getPointCount() {
        return ptr.sfRectangleShape_getPointCount();
    }

    private {
        Vector2f _size;
        sfRectangleShape* ptr;
    }
}