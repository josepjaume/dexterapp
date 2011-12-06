class Dexterapp.Views.FileNew extends Backbone.View
  events:
    "submit form": "new"

  initialize: ->
    @collection = new Dexterapp.Collections.FilesCollection
    @collection.bind "add", (data) ->
      Dexterapp.shows.add(
        new Dexterapp.Models.Show(data.get("show"))
      )

  render: ->
    $(@el).html(JST['files/new']())
    this

  new: (data) ->
    params = $(data.target).serializeArray()
    name   = params[0].value

    @collection.create({name: name}, {
      error: (data) ->
        console.log("error creating file")
        console.log(data)
    })

    $("input", data.target).val('')
    false
