class Dexterapp.Models.Show extends Backbone.Model
  paramRoot: 'show'

  defaults:

class Dexterapp.Collections.ShowsCollection extends Backbone.Collection
  model: Dexterapp.Models.Show
  url: '/shows'
