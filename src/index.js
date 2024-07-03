require("./index.css");

const { Elm } = require("./Main.elm");

Elm.Main.init();

const hljs = require("highlight.js/lib/core");
const haskellLang = require("highlight.js/lib/languages/haskell");

hljs.registerLanguage("haskell", haskellLang);
hljs.highlightAll();

import renderMathInElement from "katex/contrib/auto-render/auto-render";
renderMathInElement(document.body);
