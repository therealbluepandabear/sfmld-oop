module window.sensor;

import bindbc.sfml;
import std.conv;

final abstract class Sensor {
    enum Type {
        Accelerometer,
        Gyroscope,
        Magnetometer,
        Gravity,
        UserAcceleration,
        Orientation,

        Count
    }

    static {
        bool isAvailable(Type sensor) {
            return cast(bool)(sfSensor_isAvailable(to!sfSensorType(to!int(sensor))));
        }
    }
}