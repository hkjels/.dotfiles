
(function (doc, win) {
  "use strict";

  hljs.tabReplace = '  ';
  hljs.initHighlightingOnLoad();

  window.addEventListener('load', function() {
    setTimeout(function () { window.scrollTo(0, 1); }, 0);
  });

})(document, window, hljs);

