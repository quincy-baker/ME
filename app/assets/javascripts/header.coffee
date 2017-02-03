window.header =
  el:
    nav_icon: '#nav-icon'
		menu: '#menu'  

  init: ->
  
  load: ->
    $(header.el.nav_icon).on('click', header.toggleMenu)

 	toggleMenu: ->
 		$(this).toggleClass 'open'

 		if $(this).hasClass "open"
		  $('#content').animate {
		    'right': '110%',
		    'opacity': '0'
		  }, 400
		  $('#menu').animate {
		    'opacity': '1',
		    'right': '0'
		  }, 400

 		else
		  $('#menu').animate {
		    'right': '-110%',
		    'opacity': '0'
		  }, 400
		  $('#content').animate {
		    'opacity': '1',
		    'right': '0'
		  }, 400