(function () {
  function applyAnim(that, x) {
    $(that).removeClass().addClass(x);
    var wait = window.setTimeout(function () {
      $(that).removeClass();
    }, 1300);
  }
  jQuery(document).ready(function () {
    $('#swissjeese-logo').on('mouseover', function () {
      applyAnim(this, 'swing');
    });
    $('#bear').on('mouseover', function () {
      applyAnim(this, 'wobble');
    });
    $('#freeticket').on('mouseover', function () {
      applyAnim(this, 'shake');
    });
    $('#follow_twitter').on('mouseover', function () {
      applyAnim(this, 'bounce');
    });
  });
})();
