window.work =

  el:
    slides: '#homepage-primary-slide, #homepage-secondary-slide'
    arrow_down: '#arrow-down-icon'

  wheel_delta: []

  init: ->
  
  load: ->

  # disableScroll: (e) ->
  #   e.preventDefault()
  #   e.stopImmediatePropagation()
  #   $(work.el.slides).off('mousewheel')
  #   work.wheel_delta.push(e.originalEvent.deltaY)
  #   idx = 0
  #   while idx < 1
  #     if work.wheel_delta[0] > 0
  #       console.log 'up'
  #       $.when(work.slideDownHomepage()).done ->
  #         work.wheel_delta = []
  #         idx++
  #     else if work.wheel_delta[0] < 0
  #       console.log 'down'
  #       $.when(work.slideUpHomepage()).done ->
  #         work.wheel_delta = []
  #         idx++
      
  # slideDownHomepage: ->
  #   $('.carousel').carousel 'pause'

  #   slide_height = $('#homepage-secondary-slide').height()

  #   $('#homepage-main-image #github-link').fadeToggle 1250
  #   $('#header').fadeToggle 2000

  #   $('#homepage-secondary-slide').animate {
  #     'top': "#{slide_height+60}"
  #   }, 2000
  

  #   setTimeout (->
  #     $(home.el.slides).on('mousewheel', work.disableScroll)
  #   ), 3000

  # slideUpHomepage: ->
  #   # slide_height = $('#homepage-secondary-slide').height()
  #   # $('#homepage-main-image').fadeIn 1750
  #   # $('#homepage-secondary-slide').animate {
  #   #   'top': "#{slide_height+100}"
  #   # }, 2500
  #   # $('#header').animate {
  #   #   'bottom': "100px",
  #   #   'opacity': '0'
  #   # }, 2000
    
  #   setTimeout (->
  #     $(work.el.slides).on('mousewheel', work.disableScroll)
  #   ), 3000


