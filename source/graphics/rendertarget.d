module graphics.rendertarget;

import graphics.color;
import graphics.drawable;
import graphics.renderstates;
import graphics.rect;
import system.vector2;
import bindbc.sfml;

interface RenderTarget {
    void clear(Color color);

    void setView(sfView* view);

    const(sfView)* getView();

    const(sfView)* getDefaultView();

    IntRect getViewport(sfView* view);

    Vector2f mapPixelToCoords(Vector2i point);

    Vector2f mapPixelToCoords(Vector2i point, sfView* view);

    void draw(Drawable drawable, RenderStates states);

    void pushGLStates();

    void popGLStates();

    void resetGLStates();
}
