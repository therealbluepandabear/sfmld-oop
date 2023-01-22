module wrappers;

import bindbc.sfml;

struct Vector2u {
    uint x;
    uint y;
}

struct Vector3i {
    int x;
    int y;
    int z;
}

struct Vector3f {
    float x;
    float y;
    float z;
}


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

interface Drawable {
    void draw(RenderTarget target, RenderStates states);
}
