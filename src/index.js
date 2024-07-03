const { Elm } = require("./Main.elm");

Elm.Main.init();

const hljs = require("highlight.js/lib/core");
const haskellLang = require("highlight.js/lib/languages/haskell.js");

hljs.registerLanguage("haskell", haskellLang);
hljs.highlightAll();
