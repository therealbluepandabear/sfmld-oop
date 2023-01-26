module window.sensor;

import bindbc.sfml;
import std.conv;
import system.vector3;
import converters;

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
        private sfSensorType to_sfSensorType(Type type) {
            return to!sfSensorType(to!int(type));
        }

        bool isAvailable(Type sensor) {
            return cast(bool)(sfSensor_isAvailable(to_sfSensorType(sensor)));
        }

        void setEnabled(Type sensor, bool enabled) {
            sfSensor_setEnabled(to_sfSensorType(sensor), enabled);
        }

        Vector3f getValue(Type sensor) {
            return sfSensor_getValue(to_sfSensorType(sensor)).toVector3f();
        }
    }
}