class Dexterapp.Models.Episode extends Backbone.Model
  paramRoot: 'episode'

  defaults:

class Dexterapp.Collections.EpisodesCollection extends Backbone.Collection
  model: Dexterapp.Models.Episode
  url: '/episodes'
