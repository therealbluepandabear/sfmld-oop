import std.stdio;
import bindbc.sfml;
import wrappers;
import graphics.rectangleshape;
import system.vector2f;
import graphics.color;
import graphics.renderwindow;
import graphics.shape;
import graphics.rectangleshape;
import graphics.renderstates;

void main() {
	loadSFML();

	RectangleShape rectangleShape = new RectangleShape(Vector2f(50, 50));
	rectangleShape.setPosition(Vector2f(50, 50));
	rectangleShape.setFillColor(Color.Blue);

	RenderWindow renderWindow = new RenderWindow(sfVideoMode(500, 500), "Tests", sfWindowStyle.sfDefaultStyle, null);
	sfEvent event;

	while (renderWindow.isOpen()) {
		while (renderWindow.pollEvent(&event)) {
			if (event.type == sfEventType.sfEvtClosed) {
				renderWindow.close();
			}
		}

		renderWindow.clear(Color.Yellow);
		renderWindow.ptr.sfRenderWindow_drawShape(rectangleShape.ptr, null);
		renderWindow.display();
	}
}
