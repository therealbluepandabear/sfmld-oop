import std.stdio;
import bindbc.sfml;

interface RenderTarget {
	void clear(sfColor color);

	void setView(sfView* view);

	sfView* getView();

	sfView* getDefaultView();

	sfIntRect getViewport(sfView* view);

	sfVector2f mapPixelToCoords(sfVector2i point);

	sfVector2f mapPixelToCoords(sfVector2i point, sfView* view);

	void pushGLStates();

	void popGLStates();

	void resetGLStates();
}

interface Drawable {
	void draw();
}

void main()
{
	sfRectangleShape_create();
	writeln("Edit source/app.d to start your project.");
}
