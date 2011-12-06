class Dexterapp.Routers.ShowsRouter extends Backbone.Router
  initialize: (options) ->

  routes:
    "": "index"

  index: ->
    view = new Dexterapp.Views.ShowsIndex
      collection: Dexterapp.shows

    file_view = new Dexterapp.Views.FileNew
      collection: Dexterapp.files

    $('#shows').html view.render().el
    $('#shows').before file_view.render().el
