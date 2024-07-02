window.addEventListener("load", main);

class HaskellCode extends HTMLElement
{
    constructor() 
    {
        super();

        this.innerHTML =
            `<pre><code class="language-haskell">${this.innerHTML}</code></pre>`;
    }
}

function main()
{
    customElements.define("haskell-code", HaskellCode);

    hljs.highlightAll();
}
