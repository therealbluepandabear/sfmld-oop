import std.stdio;
import bindbc.sfml;
import wrappers;
import graphics.rectangleshape;
import system.vector2f;
import graphics.color;
import graphics.renderwindow;

void main()
{
	loadSFML();


	RectangleShape rectangleShape = new RectangleShape(Vector2f(50, 50));

	RenderWindow renderWindow = new RenderWindow(sfVideoMode(500, 500), "Tests", sfWindowStyle.sfDefaultStyle, null);
	sfEvent event;

	while (renderWindow.isOpen()) {
		while (renderWindow.pollEvent(&event)) {
			if (event.type == sfEventType.sfEvtClosed) {
				renderWindow.close();
			}
		}

		renderWindow.clear(Color.Yellow);
		renderWindow.display();
	}
}
