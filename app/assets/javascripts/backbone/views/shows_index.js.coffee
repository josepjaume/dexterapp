class Dexterapp.Views.ShowsIndex extends Backbone.View
  initialize: ->
    @render()
    _.bindAll(this, "render")
    @collection.bind "add", @render

  render: ->
    $(@el).html(JST['shows/index']({ collection: @collection }))

    @collection.each (show) =>
      showView = new Dexterapp.Views.ShowView
        model: show

      @$('ul').append(showView.render().el)

    this
