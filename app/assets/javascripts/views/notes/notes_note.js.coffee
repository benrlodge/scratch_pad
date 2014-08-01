class ScratchPad.Views.NotesNote extends Backbone.View

  template: JST['notes/note']


  initialize: ->
  	@collection.on('reset', @render, this)
  	@collection.on('change', @render, this)


  render: ->
  	console.log '---- RENDERING THE VIEW'
  	$(@el).html(@template(notes: @collection))
  	this