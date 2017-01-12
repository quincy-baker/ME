window.home =

  el:
    slides: '#homepage-primary-slide, #homepage-secondary-slide'
    arrow_down: '#arrow-down-icon'

  wheel_delta: []

  init: ->
    $('#homepage-secondary-slide').css 'top', $("#homepage-secondary-slide").height()
    $('.carousel-item').eq(0).addClass 'active'
  load: ->
    $('.carousel').carousel 'pause'
    $(home.el.slides).on('mousewheel', home.disableScroll)
    $(home.el.arrow_down).on('click', home.slideDownHomepage)
    

  disableScroll: (e) ->
    e.preventDefault()
    e.stopImmediatePropagation()
    $(home.el.slides).off('mousewheel')
    home.wheel_delta.push(e.originalEvent.deltaY)
    idx = 0
    while idx < 1
      if home.wheel_delta[0] > 0
        console.log 'up'
        $.when(home.slideDownHomepage()).done ->
          home.wheel_delta = []
          idx++
      else if home.wheel_delta[0] < 0
        console.log 'down'
        $.when(home.slideUpHomepage()).done ->
          home.wheel_delta = []
          idx++
      
  slideDownHomepage: ->
    $('.carousel').carousel 'pause'

    slide_height = $('#homepage-secondary-slide').height()

    $('#homepage-main-image #github-link').fadeToggle 1250
    $('#header').fadeToggle 2000

    $('#homepage-secondary-slide').animate {
      'top': "#{slide_height+60}"
    }, 2000
  

    setTimeout (->
      $(home.el.slides).on('mousewheel', home.disableScroll)
    ), 3000

  slideUpHomepage: ->
    # slide_height = $('#homepage-secondary-slide').height()
    # $('#homepage-main-image').fadeIn 1750
    # $('#homepage-secondary-slide').animate {
    #   'top': "#{slide_height+100}"
    # }, 2500
    # $('#header').animate {
    #   'bottom': "100px",
    #   'opacity': '0'
    # }, 2000
    
    setTimeout (->
      $(home.el.slides).on('mousewheel', home.disableScroll)
    ), 3000


