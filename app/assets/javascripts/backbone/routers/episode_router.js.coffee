class Dexterapp.Routers.EpisodesRouter extends Backbone.Router
  initialize: (options) ->

  routes:
    "": "index"

  index: ->
    view = new Dexterapp.Views.EpisodesList
      collection: Dexterapp.episodes

    $('#episodes').html view.render().el
