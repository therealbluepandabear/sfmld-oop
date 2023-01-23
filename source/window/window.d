module window.window;

import bindbc.sfml;
import std.string;
import system.vector2i;
import system.vector2u;

class Window {
    this() {

    }

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

    Vector2i getPosition() {
        return ptr.sfWindow_getPosition().toVector2i();
    }

    void setPosition(Vector2i position) {
        ptr.sfWindow_setPosition(position.to_sfVector2i());
    }

    Vector2u getSize() {
        return ptr.sfWindow_getSize().toVector2u();
    }

    void setSize(Vector2u size) {
        ptr.sfWindow_setSize(size.to_sfVector2u());
    }

    void setTitle(string title) {
        ptr.sfWindow_setTitle(toStringz(title));
    }

    void setIcon(uint width, uint height, sfUint8* pixels) {
        ptr.sfWindow_setIcon(width, height, pixels);
    }

    void setVisible(bool visible) {
        ptr.sfWindow_setVisible(visible);
    }

    void setVerticalSyncEnabled(bool enabled) {
        ptr.sfWindow_setVerticalSyncEnabled(enabled);
    }

    void setMouseCursorVisible(bool visible) {
        ptr.sfWindow_setMouseCursorVisible(visible);
    }

    void setMouseCursorGrabbed(bool grabbed) {
        ptr.sfWindow_setMouseCursorGrabbed(grabbed);
    }

    void setMouseCursor(sfCursor* cursor) {
        ptr.sfWindow_setMouseCursor(cursor);
    }

    void setKeyRepeatEnabled(bool enabled) {
        ptr.sfWindow_setKeyRepeatEnabled(enabled);
    }

    void setFramerateLimit(uint limit) {
        ptr.sfWindow_setFramerateLimit(limit);
    }

    void setJoystickThreshold(float threshold) {
        ptr.sfWindow_setJoystickThreshold(threshold);
    }

    void setActive(bool active) {
        ptr.sfWindow_setActive(active);
    }

    void requestFocus() {
        ptr.sfWindow_requestFocus();
    }

    bool hasFocus() {
        return cast(bool)(ptr.sfWindow_hasFocus());
    }

    void display() {
        ptr.sfWindow_display();
    }

    sfWindowHandle getSystemHandle() {
        return ptr.sfWindow_getSystemHandle();
    }

    private sfWindow* ptr;
}
