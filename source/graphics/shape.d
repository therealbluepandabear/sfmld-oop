module graphics.shape;

import wrappers;
import graphics.color;
import graphics.intrect;
import graphics.floatrect;
import graphics.rendertarget;
import graphics.transformable;
import system.vector2f;
import bindbc.sfml;

class Shape : Transformable, Drawable {
    override void draw(RenderTarget target, RenderStates states) {
    }

    void setTexture(sfTexture* texture, bool resetRect) {
        ptr.sfShape_setTexture(texture, resetRect);
    }

    void setTextureRect(IntRect rect) {
        ptr.sfShape_setTextureRect(rect.to_sfIntRect());
    }

    void setFillColor(Color color) {
        ptr.sfShape_setFillColor(color);
    }

    void setOutlineColor(Color color) {
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

    Color getFillColor() {
        return ptr.sfShape_getFillColor();
    }

    Color getOutlineColor() {
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