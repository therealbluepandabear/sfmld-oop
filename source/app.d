import std.stdio;
import bindbc.sfml;

void main()
{
	loadSFML();

	sfRenderWindow* renderWindow = sfRenderWindow_create(sfVideoMode(500, 500), "Tests", sfWindowStyle.sfDefaultStyle, null);
	sfEvent event;

	while (renderWindow.sfRenderWindow_isOpen()) {
		while (renderWindow.sfRenderWindow_pollEvent(&event)) {
			if (event.type == sfEventType.sfEvtClosed) {
				renderWindow.sfRenderWindow_close();
			}
		}

		renderWindow.sfRenderWindow_clear(sfYellow);
		renderWindow.sfRenderWindow_display();
	}
}
