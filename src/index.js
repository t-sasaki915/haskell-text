require("./index.css");

const { Elm } = require("./Main.elm");

Elm.Main.init();

window.addEventListener("load", jsMain);

function jsMain()
{
    hljs.highlightAll();
    renderMathInElement(document.body);
}
