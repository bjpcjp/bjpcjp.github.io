(function () {
  var MIN_WIDTH = 50;   // px; narrower natural width counts as junk
  function hide(img) { img.classList.add('cover--hidden'); }
  function judge(img) {
    if (img.complete && img.naturalWidth < MIN_WIDTH) hide(img);
  }
  function isCover(t) { return t && t.tagName === 'IMG' && t.classList.contains('cover'); }
  document.addEventListener('error', function (e) { if (isCover(e.target)) hide(e.target); }, true);
  document.addEventListener('load', function (e) { if (isCover(e.target)) judge(e.target); }, true);
  Array.prototype.forEach.call(document.querySelectorAll('img.cover'), judge);
})();
