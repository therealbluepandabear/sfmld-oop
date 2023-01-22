module window.event;

import bindbc.sfml;

struct Event {
    struct SizeEvent {
        uint width;
        uint height;
    }

    struct KeyEvent {

    }

    struct TextEvent {

    }

    struct MouseMoveEvent {

    }

    struct MouseButtonEvent {

    }

    struct MouseWheelScrollEvent {

    }

    struct JoystickConnectEvent {

    }

    struct JoystickMoveEvent {

    }

    struct JoystickButtonEvent {

    }

    struct TouchEvent {
        uint finger;
        int x;
        int y;
    }

    struct SensorEvent {

    }

    enum EventType {
        Closed,
        Resized,
        LostFocus,
        GainedFocus,
        TextEntered,
        KeyPressed,
        KeyReleased,
        MouseWheelScrolled,
        MouseButtonPressed,
        MouseButtonReleased,
        MouseMoved,
        MoustEntered,
        MouseLeft,
        JoystickButtonPressed,
        JoystickButtonReleased,
        JoystickMoved,
        JoystickConnected,
        JoystickDisconnected,
        TouchBegan,
        TouchMove,
        TouchEnded,
        SensorChanged
    }

    EventType type;
}