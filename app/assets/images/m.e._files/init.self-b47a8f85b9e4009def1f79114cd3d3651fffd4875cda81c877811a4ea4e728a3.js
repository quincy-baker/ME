(function() {
  var initialize;

  initialize = {
    inited: [],
    loaded: [],
    initialize_objects: function() {
      return $('[data-init]').each((function(_this) {
        return function(index, element) {
          return $.each($(element).data('init').split(" "), function(i, val) {
            var error;
            if ($.inArray(val, initialize.inited) === -1) {
              initialize.inited.push(val);
              try {
                return window[val].init();
              } catch (error1) {
                error = error1;
                return console.log(val + " failed to initialize:", error);
              }
            }
          });
        };
      })(this));
    },
    load_objects: function() {

      /* DO NOT USE DOCUMENT BINDS IN YOUR LOAD SCRIPTS */
      return $('[data-load]').each((function(_this) {
        return function(index, element) {
          return $.each($(element).data('load').split(" "), function(i, val) {
            var error;
            if ($.inArray(val, initialize.loaded) === -1) {
              initialize.loaded.push(val);
              try {
                return window[val].load();
              } catch (error1) {
                error = error1;
                return console.log(val + " failed to load:", error);
              }
            }
          });
        };
      })(this));
    },
    clear_loaded: function() {
      return initialize.loaded = [];
    }
  };

  $(document).on('ready turbolinks:load', initialize.initialize_objects);

  $(document).on('ready turbolinks:load', initialize.load_objects);

  $(document).on('turbolinks:before-cache', initialize.clear_loaded);

}).call(this);
