class Dexterapp.Views.EpisodeView extends Backbone.View
  tagName: 'li'
  className: 'episode'
  render: ->
    $(@el).html(JST['episodes/view']({ model: @model }))
    this

