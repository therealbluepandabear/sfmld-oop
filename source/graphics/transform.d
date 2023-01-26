module graphics.transform;

import bindbc.sfml;
import internal.converters;

struct Transform {
    this(
        float a00, float a01, float a02,
        float a10, float a11, float a12,
        float a20, float a21, float a22
    ) {
        _matrix = [
            a00, a10, 0, a20,
            a01, a11, 0, a21,
            0,   0,   1, 0,
            a02, a12, 0, a22
        ];
    }

    const(float[16]) getMatrix() {
        return _matrix;
    }

    private {
        float[16] _matrix = [
            1, 0, 0, 0,
            0, 1, 0, 0,
            0, 0, 1, 0,
            0, 0, 0, 1
        ];
    }
}
