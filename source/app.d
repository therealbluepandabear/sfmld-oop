import std.stdio;
import bindbc.sfml;

struct Vector2i {
	int x;
	int y;
}

struct Vector2f {
	float x;
	float y;
}

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

interface RenderTarget {
	void clear(sfColor color);

	void setView(sfView* view);

	sfView* getView();

	sfView* getDefaultView();

	sfIntRect getViewport(sfView* view);

	Vector2f mapPixelToCoords(Vector2i point);

	Vector2f mapPixelToCoords(Vector2i point, sfView* view);

	void draw(Drawable drawable, sfRenderStates states);

	void pushGLStates();

	void popGLStates();

	void resetGLStates();
}

interface Drawable {
	void draw(RenderTarget target, sfRenderStates states);
}

interface Transformable {
	void setPosition(float x, float y);

	void setPosition(Vector2f position);

	void setRotation(float angle);

	void setScale(float factorX, float factorY);

	void setScale(Vector2f factors);

	void setOrigin(float x, float y);

	void setOrigin(Vector2f origin);

	Vector2f getPosition();

	float getRotation();

	sfVector2f getScale();
}

class RectangleShape : Drawable {
	this(Vector2f size) {
		_size = size;
	}

	override void draw(RenderTarget target, sfRenderStates states);

	private {
		Vector2f _size;
	}
}

void main()
{
	loadSFML();

	writeln(); stdout.flush();
}
