$(function() {
  $('#history > div.has-notes').each(function(i) {
    $(this).find("blockquote").each(function(i) {
      q = $(this);
      if (q.height() < 100)
        return;

      a = '<a class="toggle-quoted-text quoted-text-collapsed" href="#" onclick="return toggleQuotedTextVisibility(this);">' + getShowQuotedTextString() + '</a>';
      q.before(a);
      q.hide();
    });
  });
});

function toggleQuotedTextVisibility(a) {
  a = $(a);
  q = a.next("blockquote");
  q.toggle();
  // reflect current visibility state
  if (q.is(':visible')) {
    a.text(getHideQuotedTextString());
    a.removeClass("quoted-text-collapsed");
    a.addClass("quoted-text-expanded");
  } else {
    a.text(getShowQuotedTextString());
    a.addClass("quoted-text-collapsed");
    a.removeClass("quoted-text-expanded");
  }
  return false;
}
