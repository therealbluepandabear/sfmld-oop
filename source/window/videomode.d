module window.videomode;

import bindbc.sfml;

struct VideoMode {
    uint modeWidth;
    uint modeHeight;
    uint modeBitsPerPixel = 32;

    bool isValid() {
        return cast(bool)(sfVideoMode_isValid(sfVideoMode(modeWidth, modeHeight, modeBitsPerPixel)));
    }
}
