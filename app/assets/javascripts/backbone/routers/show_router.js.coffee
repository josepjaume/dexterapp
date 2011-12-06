class Dexterapp.Routers.ShowsRouter extends Backbone.Router
  initialize: (options) ->

  routes:
    "": "index"

  index: ->
    view = new Dexterapp.Views.ShowsIndex
      collection: Dexterapp.shows

    $('#shows').html view.render().el
