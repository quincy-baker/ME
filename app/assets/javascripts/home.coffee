window.home =

  el:
    slides: '#homepage-primary-slide, #homepage-secondary-slide'
    arrow_down: '#arrow-down-icon'

  wheel_delta: []

  init: ->
    $('#homepage-secondary-slide').css 'top', $("#homepage-secondary-slide").height()
    $('.carousel-item').eq(0).addClass 'active'
  load: ->
    $(home.el.slides).on('mousewheel', home.disableScroll)
    $('.carousel').carousel 'pause'
    $(home.el.arrow_down).on('click', home.slideDownHomepage)
    

  disableScroll: (e) ->
    e.preventDefault()
    e.stopImmediatePropagation()
    $(home.el.slides).off('mousewheel')
    home.wheel_delta.push(e.originalEvent.deltaY)
    idx = 0
    while idx < 1
      if home.wheel_delta[0] > 0
        $.when(home.slideUpHomepage()).done ->
          home.wheel_delta = []
          idx++
      else if home.wheel_delta[0] < 0
        $.when(home.slideDownHomepage()).done ->
          home.wheel_delta = []
          idx++
      
  slideDownHomepage: ->
    slide_height = $('#homepage-secondary-slide').height()
    $('#homepage-secondary-slide').animate {
      'top': "#{slide_height+100}"
    }, 2500
    
    setTimeout (->
      $(home.el.slides).on('mousewheel', home.disableScroll)
    ), 3000

  slideUpHomepage: ->
    slide_height = $('#homepage-secondary-slide').height()
    $('#homepage-secondary-slide').animate {
      'top': "#{slide_height+100}"
    }, 2500
    
    setTimeout (->
      $(home.el.slides).on('mousewheel', home.disableScroll)
    ), 3000


