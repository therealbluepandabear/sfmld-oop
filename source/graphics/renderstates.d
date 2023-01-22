module graphics.renderstates;

import bindbc.sfml;

class RenderStates {
    this(sfBlendMode blendMode) {
    }

    this(sfTransform transform) {
    }

    this(sfTexture* texture) {

    }

    this(sfShader* shader) {

    }

    this(
        sfBlendMode blendMode,
        sfTransform transform,
        sfTexture* texture,
        sfShader* shader
    ) {

    }

    sfBlendMode blendMode;

    sfTransform transform;

    sfTexture* texture;
}