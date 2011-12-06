class Dexterapp.Views.ShowsIndex extends Backbone.View
  initialize: ->
    @render()

  render: ->
    $(@el).html(JST['shows/index']({ collection: @collection }))

    @collection.each (show) =>
      showView = new Dexterapp.Views.ShowView
        model: show

      @$('ul').append(showView.render().el)

    this
