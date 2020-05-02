package pages.modal;

import js.Browser.console;
import js.Browser.window;
import js.Browser.document;
import electron.renderer.Remote;

class Modal {

    static function main() {
        window.onload = function() {
            var container = document.querySelector('#container');

            container.addEventListener('click', function() {
                console.log('Event in Modal');
            });

            var title = document.querySelector('#title');
            title.innerHTML = "Hello World";
            title.style.color = "black";

            var button = document.querySelector('#close');
            button.style.padding = "10px";
            button.style.marginTop = "50px";
            button.style.backgroundColor = "#303030";
            button.style.border = "none";
            button.style.color = "white";

            button.addEventListener('click', function() {
                var win = Remote.getCurrentWindow();
                win.close();
            });
        }
    }
}
