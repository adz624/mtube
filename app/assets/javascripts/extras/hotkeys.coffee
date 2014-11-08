moviePageinationHandler = (e) ->
  currentPage = parseInt($('#movies_box').data('currentPage'), 10)
  nextPage = if e.keyCode == 39
    currentPage + 1
  else if e.keyCode == 37
    currentPage - 1

  loadPage(nextPage)

loadPage = (page) ->
  $.get '/movies.js', { page: page }

initHotKey = ->
  if $('#movies_box').size() > 0
    loadPage(1)
    $(document).bind 'keydown', 'left', moviePageinationHandler
    $(document).bind 'keydown', 'right', moviePageinationHandler

destoryHotKey = ->
  console.log('unbind')
  $(document).unbind('keydown')


$(document).ready(initHotKey)
$(document).on('page:load', initHotKey)
$(document).on "page:before-change", destoryHotKey