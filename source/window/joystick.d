module window.joystick;

import bindbc.sfml;
import std.conv;
import std.string;

final abstract class Joystick {
    enum {
        Count = 8,
        ButtonCount = 32,
        AxisCount = 8
    }

    enum Axis {
        X,
        Y,
        Z,
        R,
        U,
        V,
        PovX,
        PovY
    }

    struct Identification {
        string name;
        uint vendorId;
        uint productId;
    }

    static {
        private {
            Identification toIdentification(sfJoystickIdentification joystickIdentification) {
                return Identification(
                    to!string(joystickIdentification.name),
                    joystickIdentification.vendorId,
                    joystickIdentification.productId
                );
            }

            sfJoystickAxis to_sfJoystickAxis(Axis axis) {
                return to!sfJoystickAxis(to!int(axis));
            }
        }

        bool isConnected(uint joystick) {
            return cast(bool)(sfJoystick_isConnected(joystick));
        }

        uint getButtonCount(uint joystick) {
            return sfJoystick_getButtonCount(joystick);
        }

        bool hasAxis(uint joystick, Axis axis) {
            return cast(bool)(sfJoystick_hasAxis(joystick, to_sfJoystickAxis(axis)));
        }

        bool isButtonPressed(uint joystick, uint button) {
            return cast(bool)(sfJoystick_isButtonPressed(joystick, button));
        }

        float getAxisPosition(uint joystick, Axis axis) {
            return sfJoystick_getAxisPosition(joystick, to_sfJoystickAxis(axis));
        }

        Identification getIdentification(uint joystick) {
            return toIdentification(sfJoystick_getIdentification(joystick));
        }

        void update() {
            sfJoystick_update();
        }
    }
}