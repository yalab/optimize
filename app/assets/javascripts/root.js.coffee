location.pathname.match(new RegExp('/heavy_js')) && jQuery ($) ->
  $("li.li").each (ix, node) ->
    ((node) ->
      $(node).click () -> alert @innerHTML + "a"
    )(node)
