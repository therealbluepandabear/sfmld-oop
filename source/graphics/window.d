module graphics.window;

import bindbc.sfml;
import std.string;

class Window {
    this(sfVideoMode mode, string title, uint style, sfContextSettings* settings) {
        ptr = sfWindow_create(mode, toStringz(title), style, settings);
    }

    this(sfWindowHandle handle, sfContextSettings* settings) {
        ptr = sfWindow_createFromHandle(handle, settings);
    }

    void create(sfVideoMode mode, string title, uint style, sfContextSettings* settings) {
        ptr = sfWindow_create(mode, toStringz(title), style, settings);
    }

    void create(sfWindowHandle handle, sfContextSettings* settings) {
        ptr = sfWindow_createFromHandle(handle, settings);
    }

    void close() {
        ptr.sfWindow_close();
    }

    bool isOpen() {
        return cast(bool)(ptr.sfWindow_isOpen());
    }

    sfContextSettings getSettings() {
        return ptr.sfWindow_getSettings();
    }

    bool pollEvent(sfEvent* event) {
        return cast(bool)(ptr.sfWindow_pollEvent(event));
    }

    bool waitEvent(sfEvent* event) {
        return cast(bool)(ptr.sfWindow_waitEvent(event));
    }

    private sfWindow* ptr;
}
