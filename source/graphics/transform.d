module graphics.transform;

class Transform {
     this(
         float a00, float a01, float a02,
         float a10, float a11, float a12,
         float a20, float a21, float a22
     ) {
        _m00 = a00;
        _m01 = a01;
        _m02 = a02;
        _m10 = a10;
        _m11 = a11;
        _m12 = a12;
        _m20 = a20;
        _m21 = a21;
        _m22 = a22;
    }

    private {
        float _m00, _m01, _m02;
        float _m10, _m11, _m12;
        float _m20, _m21, _m22;
    }
}
