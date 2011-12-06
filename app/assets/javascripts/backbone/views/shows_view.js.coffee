class Dexterapp.Views.ShowView extends Backbone.View
  render: ->
    $(@el).html(JST['shows/view']({ model: @model }))
    this

