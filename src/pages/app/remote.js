const { BrowserWindow } = require('electron').remote
const electron = require('electron');

const button = document.querySelector('#modal');
button.addEventListener('click', function() {
  const modal = new BrowserWindow({ 
    parent: electron.remote.getCurrentWindow(),
    width: 300, 
    height: 300, 
    modal: true, 
    show: false,
    frame: true,
    webPreferences: {
      nodeIntegration: true,
    },
  });

  modal.setMenuBarVisibility(false);

  modal.setResizable(false);

  modal.loadFile('./src/pages/modal/modal.html');

  modal.on(closed, function() {
    modal = null;
  });

  modal.once('ready-to-show', function() {
    modal.show();
  });
});