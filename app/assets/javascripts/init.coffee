initialize =
  inited: []
  loaded: []

  initialize_objects: ->
    # [data-init] scripts will be run ONE time
    # Runs the 'init' function for the corresponding object
    # Use document and window binds
    $('[data-init]').each (index, element) =>
      $.each($(element).data('init').split(" "), (i, val) ->
        if $.inArray(val, initialize.inited) == -1
          initialize.inited.push(val)
          try
            window[val].init()
          catch error
            console.log "#{val} failed to initialize:", error
      )

  load_objects: ->
    # [data-load] scripts will be run on EVERY page load
    # Runs the 'load' function for the corresponding object
    ### DO NOT USE DOCUMENT BINDS IN YOUR LOAD SCRIPTS ###
    $('[data-load]').each (index, element) =>
      $.each($(element).data('load').split(" "), (i, val) ->
        if $.inArray(val, initialize.loaded) == -1
          initialize.loaded.push(val)
          try
            window[val].load()
          catch error
            console.log "#{val} failed to load:", error
      )

  clear_loaded: -> initialize.loaded = []

$(document).on('ready turbolinks:load', initialize.initialize_objects)
$(document).on('ready turbolinks:load', initialize.load_objects)
$(document).on('turbolinks:before-cache', initialize.clear_loaded)