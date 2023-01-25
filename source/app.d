import std.stdio;
import bindbc.sfml;
import wrappers;
import graphics.rectangleshape;
import system.vector2f;
import graphics.color;
import graphics.renderwindow;
import graphics.shape;
import graphics.rectangleshape;
import graphics.circleshape;
import graphics.renderstates;
import window.videomode;

void main() {
	loadSFML();

	RectangleShape rectangleShape = new RectangleShape(Vector2f(300, 50));
	rectangleShape.setPosition(Vector2f(50, 50));
	rectangleShape.setFillColor(Color.Blue);

	CircleShape circle = new CircleShape(30);
	circle.setFillColor(Color.Red);

	RenderWindow renderWindow = new RenderWindow(VideoMode(500, 500), "Tests", sfWindowStyle.sfDefaultStyle, null);
	sfEvent event;

	while (renderWindow.isOpen()) {
		while (renderWindow.pollEvent(&event)) {
			if (event.type == sfEventType.sfEvtClosed) {
				renderWindow.close();
			}
		}

		renderWindow.clear(Color.Yellow);
		circle.draw(renderWindow, new RenderStates());
		renderWindow.display();
	}
}
