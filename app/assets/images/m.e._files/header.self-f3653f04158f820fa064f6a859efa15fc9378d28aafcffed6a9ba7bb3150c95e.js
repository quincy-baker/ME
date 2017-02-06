(function() {
  window.header = {
    el: {
      nav_icon: '#nav-icon',
      power_off_icon: '#power-off-icon'
    },
    menu: '#menu',
    init: function() {},
    load: function() {
      $(header.el.nav_icon).on('click', header.toggleMenu);
      return $(header.el.power_off_icon).on('click', header.staticShutdown);
    },
    toggleMenu: function() {
      $(this).toggleClass('open');
      if ($(this).hasClass("open")) {
        return $('#content').animate({
          'right': '110%',
          'opacity': '0',
          'z-index': '1'
        }, 500, function() {
          return $('#menu').animate({
            'opacity': '1',
            'right': '0',
            'z-index': '2'
          }, 500);
        });
      } else {
        return $('#menu').animate({
          'right': '-110%',
          'opacity': '0',
          'z-index': '1'
        }, 500, function() {
          return $('#content').animate({
            'opacity': '1',
            'right': '0',
            'z-index': '2'
          }, 500);
        });
      }
    }
  };

  ({
    staticShutdown: function() {
      alert('titty');
      return $('.tv-container').remove;
    }
  });

}).call(this);
