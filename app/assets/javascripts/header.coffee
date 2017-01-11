window.header =
  init: ->
    $('.carousel').carousel 'pause'
  load: ->
    $('#previous-slide').on('click', header.previousSlide)
    $('#next-slide').on('click', header.nextSlide)

  previousSlide: ->
    $('.carousel').carousel 'prev'
    
  nextSlide: ->
    $('.carousel').carousel 'next'

    

    