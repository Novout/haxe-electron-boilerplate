
package electron;

import js.Node;
import js.Node.__dirname;
import electron.main.App;
import electron.main.BrowserWindow;

class Main {

	static public function main() {

		electron.main.App.on(ready, function(e) {

			var mainWindow = new BrowserWindow({
				width: 1080, 
                height: 720,
                center: true,
                frame: true,
                movable: true,
                closable: true,
				webPreferences: {
                    nodeIntegration: true,
                    defaultFontFamily: {
                        standard: 'Roboto'
                    },
				}
			});

			mainWindow.on(closed, function() {
				mainWindow = null;
			});

			mainWindow.setMenuBarVisibility(false);

			mainWindow.setResizable(false);
			
			mainWindow.loadFile('./src/pages/app/app.html');

			// win.webContents.openDevTools();

			// var tray = new electron.main.Tray( '${__dirname}/icon-192.png' );
		});

		electron.main.App.on( window_all_closed, function(e) {
			if( Node.process.platform != 'darwin' ) electron.main.App.quit();
		});
	}

}
