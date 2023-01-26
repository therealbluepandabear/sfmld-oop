module window.videomode;

import bindbc.sfml;
import internal.converters;

struct VideoMode {
    uint modeWidth;
    uint modeHeight;
    uint modeBitsPerPixel = 32;

    bool isValid() {
        return cast(bool)(sfVideoMode_isValid(this.to_sfVideoMode()));
    }
}
