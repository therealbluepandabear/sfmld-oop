module graphics.rendertarget;

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
