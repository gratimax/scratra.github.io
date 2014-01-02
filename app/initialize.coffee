$(document).ready ->
  $('pre.code').each (i, e) ->
    e = $ e
    cl = e.attr('class')
    lang = cl.slice cl.indexOf('code') + 5
    if lang isnt ''
      console.log lang
      e.html (hljs.highlight lang, e.html()).value