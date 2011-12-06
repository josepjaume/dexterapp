class Dexterapp.Models.Show extends Backbone.Model
  paramRoot: 'show'

class Dexterapp.Collections.ShowsCollection extends Backbone.Collection
  model: Dexterapp.Models.Show
  url: '/shows'
