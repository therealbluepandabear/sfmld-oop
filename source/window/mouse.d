module window.mouse;

import bindbc.sfml;
import std.conv;
import system.vector2;
import window.window;
import internal.converters;

final abstract class Mouse {
    enum Button {
        Left,
        Right,
        Middle,
        XButton1,
        XButton2,

        ButtonCount
    }

    enum Wheel {
        VerticalWheel,
        HorizontalWheel
    }

    static {
        private {
            sfMouseButton to_sfMouseButton(Button button) {
                return to!sfMouseButton(to!int(button));
            }
        }

        bool isButtonPressed(Button button) {
            return cast(bool)(sfMouse_isButtonPressed(to_sfMouseButton(button)));
        }

        Vector2i getPosition() {
            return sfMouse_getPosition(null).toVector2i();
        }
    }
}