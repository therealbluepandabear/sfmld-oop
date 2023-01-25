module window.videomode;

import bindbc.sfml;

struct VideoMode {
    uint modeWidth;
    uint modeHeight;
    uint modePitsPerPixel = 32;

    bool isValid() {
        return cast(bool)(sfVideoMode_isValid(sfVideoMode(modeWidth, modeHeight, modePitsPerPixel)));
    }
}
