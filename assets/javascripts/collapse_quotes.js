Event.observe(window, 'load', function() {
  $$('#history > div.has-notes').each(function(div) {
    div.select('blockquote').each(function(blockquote) {
      if (blockquote.getHeight() < 100)
        return;

      anchor = '<a class="toggle-quoted-text quoted-text-collapsed" href="#" onclick="return toggleQuotedTextVisibility(this);">' + getShowQuotedTextString() + '</a>';
      blockquote.insert({ before: anchor });
      blockquote.hide();
    });
  });
});

function toggleQuotedTextVisibility(anchor) {
  anchor = $(anchor);
  blockquote = anchor.next("blockquote");
  blockquote.toggle();
  if (blockquote.visible()) {
    anchor.innerText = getShowQuotedTextString();
    anchor.removeClassName("quoted-text-collapsed");
    anchor.addClassName("quoted-text-expanded");
  } else {
    anchor.innerText = getHideQuotedTextString();
    anchor.addClassName("quoted-text-collapsed");
    anchor.removeClassName("quoted-text-expanded");
  }
  return false;
}
