class ScratchPad.Views.NotesNew extends Backbone.View

  template: JST['notes/new']


  initialize: ->
  	@collection.on('reset', @render, this)
  	@collection.on('change', @render, this)


  render: ->
  	console.log '---- RENDERING THE VIEW: notes/new'
  	log @collection
  	$(@el).html(@template(notes: @collection))
  	this