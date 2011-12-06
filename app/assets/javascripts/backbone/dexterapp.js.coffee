#= require_self
#= require_tree ../../templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Dexterapp =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: (shows) ->
    new Dexterapp.Routers.EpisodesRouter()
    @episodes = new Dexterapp.Collections.EpisodesCollection(shows)
    @shows = new Dexterapp.Collections.ShowsCollection()
    Backbone.history.start()
