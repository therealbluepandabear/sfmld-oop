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
import graphics.convexshape;
import graphics.transform;
import window.videomode;
import window.windowstyle;
import window.event;

void main() {
	loadSFML();

	RectangleShape rectangleShape = new RectangleShape(Vector2f(300, 50));
	rectangleShape.setPosition(Vector2f(50, 50));
	rectangleShape.setFillColor(Color.Blue);

	ConvexShape cs = new ConvexShape(3);
	cs.setPoint(0, Vector2f(0, 0));
	cs.setPoint(1, Vector2f(30, 0));
	cs.setPoint(2, Vector2f(90, 50));
	cs.setOutlineThickness(3);
	cs.setOutlineColor(Color.Blue);

	RenderWindow renderWindow = new RenderWindow(VideoMode(500, 500), "Tests");
	Event event;

	while (renderWindow.isOpen()) {
		while (renderWindow.pollEvent(event)) {
			if (event.type == Event.EventType.Closed) {
				renderWindow.close();
			}
		}

		renderWindow.clear(Color.Yellow);
		renderWindow.draw(cs, null);
		renderWindow.display();
	}
}
