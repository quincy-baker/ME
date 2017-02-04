window.home =

  i: true
  el:
    scroll_arrow: '.scroll-arrow'

  init: ->
    # $(window).one('mousewheel', home.splashTransition)
    # $('#home').css 'margin-top', ''+$(window).height()+'px'

  load: ->
    # $(home.el.scroll_arrow).on('click', home.splashTransition)
    # figure = $('#left-panel, #right-panel, #left-panel-overlay, #right-panel-overlay').hover(home.hoverVideo, home.captureTargetId)
    # $('#nature, #nyc').on('click', home.fadeOutTransition)
    

  # fadeOutTransition: (e) ->
  #   e.stopPropagation()
  #   $(this).animate {
  #     'left': '-110%'
  #   }, 400
    
  # splashTransition: ->
  #   slide_height = $(window).height()
  #   if home.i
  #     $('#home').animate {
  #       'margin-top': "0px"
  #     }, 800
  #     $('#splash-screen').animate {
  #       'margin-top': "-#{slide_height}px"
  #     }, 800
  #     home.i = false
  #   else
  #     $('#home').animate {
  #       'margin-top': "#{slide_height}px"
  #     }, 800
  #     $('#splash-screen').animate {
  #       'margin-top': "0px"
  #     }, 800
  #     home.i = true

  # hoverVideo: (e) ->
  #   e.preventDefault()
  #   id = e.currentTarget.id
  #   if id =='left-panel'
  #     $('#right-panel-overlay').animate {
  #       'left': '0',
  #       'opacity': '1'
  #     }, 400, ->
  #       $('#'+id+' > a > video').get(0).play()
  #       return
  #     return
  #   else if id =='right-panel'
  #     $('#left-panel-overlay').animate {
  #       'left': '0',
  #       'opacity': '1'
  #     }, 400, ->
  #       $('#'+id+' > a > video').get(0).play()
  #       return
  #     return
  #   else if id == 'right-panel-overlay'
  #     $('#left-panel-overlay').animate {
  #       'left': '0',
  #       'opacity': '1'
  #     }, 400
  #     $('#right-panel-overlay').animate {
  #       'left': '110%',
  #       'opacity': '0'
  #     }, 400
  #   else if id == 'left-panel-overlay'
  #     $('#right-panel-overlay').animate {
  #       'left': '0',
  #       'opacity': '1'
  #     }, 400
  #     $('#left-panel-overlay').animate {
  #       'left': '-110%',
  #       'opacity': '0'
  #     }, 400
  #   return

  # captureTargetId: (e) ->
  #   e.preventDefault()
  #   e.stopPropagation()
  #   id = e.currentTarget.id;
  #   home.hideVideo(id);

  # hideVideo: (id) ->
  #   console.log(id)
  #   if id =='left-panel'
  #     $('#right-panel-overlay').animate {
  #       'left': '0',
  #       'opacity': '1'
  #     }, 400, ->
  #       $('#'+id+' > a > video').get(0).pause()
  #       return
  #     return
  #   else if id =='right-panel'
  #     $('#left-panel-overlay').animate {
  #       'left': '0',
  #       'opacity': '1'
  #     }, 400, ->
  #       $('#'+id+' > a > video').get(0).pause()
  #       return
  #     return
  #   else
  #     return