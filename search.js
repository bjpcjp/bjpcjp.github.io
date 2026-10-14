(function () {
  var input = document.querySelector('.search input');
  if (!input) return;
  var root = document.documentElement.getAttribute('data-root') || '';
  var box = document.createElement('div');
  box.className = 'search__results';
  box.hidden = true;
  input.parentNode.appendChild(box);
  var hay = null, state = 'idle';

  function load(cb) {
    if (hay) return cb();
    if (state === 'loading') return;
    state = 'loading';
    var s = document.createElement('script');
    s.src = root + 'search-index.js';
    s.onload = function () {
      hay = window.ARCHIVE_INDEX.map(function (e) {
        return (e[0] + ' ' + e[3] + ' ' + e[2]).toLowerCase();
      });
      cb();
    };
    s.onerror = function () { state = 'idle'; };
    document.head.appendChild(s);
  }

  function show(msg) {
    box.textContent = '';
    var d = document.createElement('div');
    d.className = 'search__none';
    d.textContent = msg;
    box.appendChild(d);
    box.hidden = false;
  }

  function run() {
    var q = input.value.toLowerCase().trim().split(/\s+/).filter(Boolean);
    if (!q.length) { box.hidden = true; return; }
    show('Loading index…');
    load(function () {
      var idx = window.ARCHIVE_INDEX, hits = [], total = 0, i, j, ok;
      for (i = 0; i < hay.length; i++) {
        ok = true;
        for (j = 0; j < q.length; j++) if (hay[i].indexOf(q[j]) === -1) { ok = false; break; }
        if (ok) { total++; if (hits.length < 30) hits.push(idx[i]); }
      }
      if (!hits.length) return show('No matches');
      box.textContent = '';
      hits.forEach(function (e) {
        var a = document.createElement('a');
        if (/^https?:/.test(e[1])) { a.href = e[1]; a.target = '_blank'; a.rel = 'noopener noreferrer'; }
        var t = document.createElement('span'); t.className = 'search__t'; t.textContent = e[0];
        var m = document.createElement('span'); m.className = 'search__m'; m.textContent = e[2];
        a.appendChild(t); a.appendChild(m); box.appendChild(a);
      });
      if (total > hits.length) {
        var more = document.createElement('div');
        more.className = 'search__none';
        more.textContent = 'Showing 30 of ' + total + ' matches';
        box.appendChild(more);
      }
      box.hidden = false;
    });
  }

  var timer;
  input.addEventListener('input', function () { clearTimeout(timer); timer = setTimeout(run, 120); });
  input.addEventListener('focus', function () { if (input.value.trim()) run(); });
  input.addEventListener('keydown', function (e) { if (e.key === 'Escape') { box.hidden = true; input.blur(); } });
  document.addEventListener('click', function (e) {
    if (!input.parentNode.contains(e.target)) box.hidden = true;
  });
})();
