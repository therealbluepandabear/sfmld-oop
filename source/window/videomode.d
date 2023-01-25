module window.videomode;

import bindbc.sfml;

struct VideoMode {
    this(uint modeWidth, uint modeHeight, uint modeBitsPerPixel = 32) {
        ptr = sfVideoMode(modeWidth, modeHeight, modeBitsPerPixel);
    }

    private sfVideoMode ptr;
}
