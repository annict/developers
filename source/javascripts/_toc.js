$(function() {
  $(".js-anchorable-toc").each(function() {
    var $toc = $(this);
    var id = $toc.prop("id");
    var href = "#" + id;
    var anchor =
      '<a class="anchorable-toc-anchor js-anchorable-toc-anchor" href="' + href + '">' +
        '<i class="fa fa-link">'
      '</a>';

    $toc.prepend(anchor);
  });

  $(".js-anchorable-toc, .js-anchorable-toc-anchor").hover(function() {
    $(this).find("i").css({ visibility: "visible" });
  }, function() {
    $(this).find("i").css({ visibility: "hidden" });
  });
});
