const minimize = document.getElementById('minimize');
const maximize = document.getElementById('maximize');
const close_app = document.getElementById('closeapp');

minimize.addEventListener('click', minimizeapp);
maximize.addEventListener('click', maximizeapp);
close_app.addEventListener('click', closeapp);

function minimizeapp () {
    api.window.minimize();
}

function maximizeapp () {
    api.window.maximize();
}

function closeapp () {
    api.window.close();
}