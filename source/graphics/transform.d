module graphics.transform;

import bindbc.sfml;

class Transform {
    this(
        float a01, float a02, float a03,
        float a11, float a12, float a13,
        float a21, float a22, float a23,
    ) {

    }

    private sfTransform ptr;
}