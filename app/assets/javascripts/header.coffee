window.header =
  el:
    nav_icon: '#nav-icon'
    power_off_icon: '#power-off-icon'
		menu: '#menu'  

  init: ->
  
  load: ->
    $(header.el.nav_icon).on('click', header.toggleMenu)

 	toggleMenu: ->
 		$(this).toggleClass 'open'

 		if $(this).hasClass "open"
		  $('#content').animate {
		    'right': '110%',
		    'opacity': '0',
		    'z-index': '1'
		  }, 500, ->
			  $('#menu').animate {
			    'opacity': '1',
			    'right': '0',
			    'z-index': '2'
			  }, 500
 		else
		  $('#menu').animate {
		    'right': '-110%',
		    'opacity': '0',
		    'z-index': '1'
		  }, 500, ->
			  $('#content').animate {
			    'opacity': '1',
			    'right': '0',
			    'z-index': '2'
			  }, 500