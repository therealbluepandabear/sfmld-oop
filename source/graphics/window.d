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

    private sfWindow* ptr;
}
