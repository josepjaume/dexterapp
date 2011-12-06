class Dexterapp.Models.File extends Backbone.Model
  paramRoot: 'file'

class Dexterapp.Collections.FilesCollection extends Backbone.Collection
  model: Dexterapp.Models.File
  url: '/files'
