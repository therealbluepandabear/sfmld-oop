module graphics.shape;

import wrappers;

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