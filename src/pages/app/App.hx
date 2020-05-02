package pages.app;

import js.Browser.console;
import js.Browser.document;
import js.Browser.window;
import js.Node.process;
import js.node.ChildProcess;

class App {

    static function main() {

        window.onload = function() {
            document.getElementById( 'logo-haxe' ).style.opacity = '1';
        }
    }

}
