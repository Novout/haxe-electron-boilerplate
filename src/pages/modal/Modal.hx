package pages.modal;

import js.Browser.console;
import js.Browser.window;
import js.Browser.document;

class Modal {

    static function main() {
        window.onload = function() {
            var title = document.querySelector('#title');
            title.innerHTML = "Hello World";
            title.style.color = "black";
        }
    }
}
