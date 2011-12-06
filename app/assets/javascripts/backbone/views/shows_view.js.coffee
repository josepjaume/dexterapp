class Dexterapp.Views.ShowView extends Backbone.View
  tagName: 'li'
  className: 'show'
  render: ->
    $(@el).html(JST['shows/view']({ model: @model }))
    this

