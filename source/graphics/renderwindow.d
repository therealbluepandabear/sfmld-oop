module graphics.renderwindow;

import graphics.window;
import graphics.rendertarget;
import graphics.color;
import graphics.intrect;
import graphics.drawable;
import graphics.renderstates;
import system.vector2i;
import system.vector2f;
import bindbc.sfml;

class RenderWindow : Window, RenderTarget {
    this(sfVideoMode mode, string title, uint style, sfContextSettings* settings) {
        super(mode, title, style, settings);
    }

    this(sfWindowHandle handle, sfContextSettings* settings) {
        super(handle, settings);
    }

    override {
        void clear(Color color) {
            ptr.sfRenderWindow_clear(color.to_sfColor());
        }

        void setView(sfView* view) {
            ptr.sfRenderWindow_setView(view);
        }

        const(sfView)* getView() {
            return ptr.sfRenderWindow_getView();
        }

        const(sfView)* getDefaultView() {
            return ptr.sfRenderWindow_getDefaultView();
        }

        IntRect getViewport(sfView* view) {
            return ptr.sfRenderWindow_getViewport(view).toIntRect();
        }

        Vector2f mapPixelToCoords(Vector2i point) {
            return ptr.sfRenderWindow_mapPixelToCoords(
                point.to_sfVector2i(),
                ptr.sfRenderWindow_getView()
            ).toVector2f();
        }

        Vector2f mapPixelToCoords(Vector2i point, sfView* view) {
            return ptr.sfRenderWindow_mapPixelToCoords(point.to_sfVector2i(), view).toVector2f();
        }

        void draw(Drawable drawable, RenderStates states) {
            drawable.draw(this, states);
        }

        void pushGLStates() {
            ptr.sfRenderWindow_pushGLStates();
        }

        void popGLStates() {
            ptr.sfRenderWindow_popGLStates();
        }

        void resetGLStates() {
            ptr.sfRenderWindow_resetGLStates();
        }
    }

    private sfRenderWindow* ptr;
}