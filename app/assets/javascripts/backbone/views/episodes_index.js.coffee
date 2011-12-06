class Dexterapp.Views.EpisodesList extends Backbone.View

  events:
    "submit form": "create"

  initialize: ->
    @render()
    _.bindAll(this, "render")

    @collection.bind "add", (episode) ->
      Dexterapp.Models.Show.new

    @collection.bind "add", @render

    @collection.each (episode) =>
      @add_show_for_episode(episode)

    @init_draggable()

  add_show_for_episode: (episode) ->
    Dexterapp.shows.add(
      new Dexterapp.Models.Show(id: episode.get("show"))
    )

  create: (data) ->
    params = $(data.target).serializeArray()
    name   = params[0].value

    @collection.create({name: name}, {
      error: (data) ->
        alert "Invalid format"
    })

    $("input", data.target).val('')
    false

  render: ->
    $(@el).html(JST['episodes/index']({ collection: @collection }))

    @collection.each (show) =>
      showView = new Dexterapp.Views.EpisodeView
        model: show

      @$('ul').append(showView.render().el)

    this

  init_draggable: ->
    $("body").bind
      dragover: (e) =>
        $(this).addClass("hover")
        return false
      dragend: (e) =>
        $(this).removeClass("hover")
        return false

      drop: (e) =>
        e.preventDefault()
        e.stopPropagation()
        $(this).removeClass("hover")
        files = e.originalEvent.dataTransfer.files
        _.each files, (file) =>
          @collection.create {name: file.fileName}
            silent: true

        @render()

        false
