module graphics.drawable;

import graphics.rendertarget;
import graphics.renderstates;

interface Drawable {
    void draw(RenderTarget target, RenderStates states);
}