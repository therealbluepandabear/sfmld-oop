module graphics.shape;

import wrappers;
import graphics.color;
import graphics.intrect;
import graphics.floatrect;
import graphics.rendertarget;
import graphics.transformable;
import graphics.drawable;
import graphics.renderstates;
import graphics.renderwindow;
import graphics.rectangleshape;
import system.vector2f;
import bindbc.sfml;
import converters;

class Shape : Transformable, Drawable {
    this() {
        ptr = sfShape_create(&getPointCount, &getPoint, cast(void*)this);

        update();
    }

    extern(C) private static ulong getPointCount(void* data) nothrow {
        return (cast(Shape)data).getPointCount();
    }

    extern(C) private static sfVector2f getPoint(size_t index, void* data) nothrow {
        return (cast(Shape)data).getPoint(index).to_sfVector2f_noThrow();
    }

    override void draw(RenderTarget target, RenderStates states) {
        (cast(RenderWindow)target).ptr.sfRenderWindow_drawShape(ptr, null);
    }

    void setTexture(sfTexture* texture, bool resetRect) {
        ptr.sfShape_setTexture(texture, resetRect);
    }

    void setTextureRect(IntRect rect) {
        ptr.sfShape_setTextureRect(rect.to_sfIntRect());
    }

    void setFillColor(Color color) {
        ptr.sfShape_setFillColor(color.to_sfColor());
    }

    void setOutlineColor(Color color) {
        ptr.sfShape_setOutlineColor(color.to_sfColor());
    }

    void setOutlineThickness(float thickness) {
        ptr.sfShape_setOutlineThickness(thickness);
    }

    void update() {
        ptr.sfShape_update();
    }

    const(sfTexture)* getTexture() {
        return ptr.sfShape_getTexture();
    }

    IntRect getTextureRect() {
        return ptr.sfShape_getTextureRect().toIntRect();
    }

    Color getFillColor() {
        return ptr.sfShape_getFillColor().toColor();
    }

    Color getOutlineColor() {
        return ptr.sfShape_getOutlineColor().toColor();
    }

    float getOutlineThickness() {
        return ptr.sfShape_getOutlineThickness();
    }

    size_t getPointCount() nothrow {
        return ptr.sfShape_getPointCount();
    }

    Vector2f getPoint(size_t index) nothrow {
        return ptr.sfShape_getPoint(index).toVector2f_noThrow();
    }

    FloatRect getLocalBounds() {
        return ptr.sfShape_getLocalBounds().toFloatRect();
    }

    FloatRect getGlobalBounds() {
        return ptr.sfShape_getGlobalBounds().toFloatRect();
    }

    sfShape* ptr;
}