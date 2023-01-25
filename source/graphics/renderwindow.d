module graphics.renderwindow;

import window.window;
import window.videomode;
import window.windowstyle;
import graphics.rendertarget;
import graphics.color;
import graphics.intrect;
import graphics.drawable;
import graphics.renderstates;
import system.vector2i;
import system.vector2f;
import bindbc.sfml;
import std.string;
import converters;

class RenderWindow : Window, RenderTarget {
    this(
        VideoMode mode,
        string title,
        uint style = WindowStyle.Default,
        sfContextSettings* settings = null
    ) {
        ptr = sfRenderWindow_create(mode.to_sfVideoMode(), toStringz(title), style, settings);
    }

    this(sfWindowHandle handle, sfContextSettings* settings = null) {
        ptr = sfRenderWindow_createFromHandle(handle, settings);
    }

    override {
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

        void close() {
            ptr.sfRenderWindow_close();
        }

        void clear(Color color) {
            ptr.sfRenderWindow_clear(color.to_sfColor());
        }

        bool isOpen() {
            return cast(bool)(ptr.sfRenderWindow_isOpen());
        }

        bool pollEvent(sfEvent* event) {
            return cast(bool)(ptr.sfRenderWindow_pollEvent(event));
        }

        void display() {
            ptr.sfRenderWindow_display();
        }
    }

    sfRenderWindow* ptr;
}