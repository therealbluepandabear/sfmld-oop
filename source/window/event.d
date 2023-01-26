module window.event;

import bindbc.sfml;
import window.keyboard;
import window.sensor;
import window.joystick;
import window.mouse;

struct Event {
    struct SizeEvent {
        uint width;
        uint height;
    }

    struct KeyEvent {
        Keyboard.Key code;
        bool alt;
        bool control;
        bool shift;
        bool system;
    }

    struct TextEvent {
        dchar unicode;
    }

    struct MouseMoveEvent {
        int x;
        int y;
    }

    struct MouseButtonEvent {
        Mouse.Button button;
        int x;
        int y;
    }

    struct MouseWheelScrollEvent {
        Mouse.Wheel wheel;
        float delta;
        int x;
        int y;
    }

    struct JoystickConnectEvent {
        uint joystickId;
    }

    struct JoystickMoveEvent {
        uint joystickId;
        Joystick.Axis axis;
        float position;
    }

    struct JoystickButtonEvent {
        uint joystickId;
        uint button;
    }

    struct TouchEvent {
        uint finger;
        int x;
        int y;
    }

    struct SensorEvent {
        Sensor.Type type;
        int x;
        int y;
        int z;
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
        MouseEntered,
        MouseLeft,
        JoystickButtonPressed,
        JoystickButtonReleased,
        JoystickMoved,
        JoystickConnected,
        JoystickDisconnected,
        TouchBegan,
        TouchMoved,
        TouchEnded,
        SensorChanged,

        Count
    }

    EventType type;

    union {
        SizeEvent size;
        KeyEvent key;
        TextEvent text;
        MouseMoveEvent mouseMove;
        MouseButtonEvent mouseButton;
        MouseWheelScrollEvent mouseWheelScroll;
        JoystickMoveEvent joystickMove;
        JoystickButtonEvent joystickButton;
        JoystickConnectEvent joystickConnect;
        TouchEvent touch;
        SensorEvent sensor;
    }
}