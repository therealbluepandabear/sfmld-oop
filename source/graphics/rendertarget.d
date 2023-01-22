module graphics.rendertarget;

import graphics.color;
import graphics.drawable;
import graphics.renderstates;
import graphics.intrect;
import system.vector2i;
import system.vector2f;
import bindbc.sfml;

interface RenderTarget {
    void clear(Color color);

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
