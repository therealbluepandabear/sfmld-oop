module converters;

import system.vector2f;
import system.vector2u;
import system.vector3f;
import system.vector2i;
import graphics.transform;
import graphics.floatrect;
import graphics.intrect;
import graphics.color;
import window.videomode;
import window.event;
import bindbc.sfml;
import std.conv;

Vector2f toVector2f(sfVector2f vector) {
    return Vector2f(vector.x, vector.y);
}

Vector2f toVector2f_noThrow(sfVector2f vector) nothrow {
    return Vector2f(vector.x, vector.y);
}

Vector2u toVector2u(sfVector2u vector) {
    return Vector2u(vector.x, vector.y);
}

Vector2i toVector2i(sfVector2i vector) {
    return Vector2i(vector.x, vector.y);
}

Vector3f toVector3f(sfVector3f vector) {
    return Vector3f(
        vector.x,
        vector.y,
        vector.z
    );
}

FloatRect toFloatRect(sfFloatRect rect) {
    return FloatRect(
        rect.left,
        rect.top,
        rect.width,
        rect.height
    );
}

IntRect toIntRect(sfIntRect rect) {
    return IntRect(
        rect.left,
        rect.top,
        rect.width,
        rect.height
    );
}

Color toColor(sfColor color) {
    return Color(color.r, color.g, color.b, color.a);
}

private Event.EventType toEventType(sfEventType eventType) {
    import std.stdio;
    writeln(to!(int)(eventType)); stdout.flush();
    writeln(to!(Event.EventType)(to!(int)(eventType))); stdout.flush();

    return to!(Event.EventType)(to!(int)(eventType));
}

Event toEvent(sfEvent event) {
    Event ev;
    ev.type = toEventType(event.type);

    return ev;
}

sfVector2f to_sfVector2f(Vector2f vector) {
    return sfVector2f(vector.x, vector.y);
}

sfVector2f to_sfVector2f_noThrow(Vector2f vector) nothrow {
    return sfVector2f(vector.x, vector.y);
}

sfVector2u to_sfVector2u(Vector2u vector) {
    return sfVector2u(vector.x, vector.y);
}

sfVector2i to_sfVector2i(Vector2i vector) {
    return sfVector2i(vector.x, vector.y);
}

sfIntRect to_sfIntRect(IntRect rect) {
    return sfIntRect(
        rect.left,
        rect.top,
        rect.width,
        rect.height
    );
}

sfColor to_sfColor(Color color) {
    return sfColor(color.red, color.green, color.blue, color.alpha);
}

sfVideoMode to_sfVideoMode(VideoMode videoMode) {
    return sfVideoMode(videoMode.modeWidth, videoMode.modeHeight, videoMode.modeBitsPerPixel);
}

private sfEventType to_sfEventType(Event.EventType eventType) {
    return to!(sfEventType)(to!(int)(eventType));
}

sfEvent to_sfEvent(Event event) {
    sfEvent ev = sfEvent();
    ev.type = to_sfEventType(event.type);

    return ev;
}
