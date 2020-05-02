package pages.app;

import js.Browser.console;
import js.Browser.document;
import js.Browser.window;
import js.Node.process;
import js.node.ChildProcess;
import electron.renderer.Remote;

class App {

    static inline function setText( id : String, text : String ) {
        document.querySelector('#' + id).textContent = text;
    }

    static function main() {

        window.onload = function() {

            setText( 'system-version', process.platform +' '+ process.arch );
            setText( 'node-version', 'node '+process.version );
            setText( 'electron-version', 'electron '+process.versions['electron'] );

            ChildProcess.spawn( 'haxe', ['-version'] ).stdout.on( 'data', function(buf) {
				var version = buf.toString();
                setText( 'haxe-version', 'haxe $version' );
            });
        }
    }
}
