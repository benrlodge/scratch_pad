class ScratchPad.Views.NotesIndex extends Backbone.View

  template: JST['notes/index']


  initialize: ->
  	@collection.on('reset', @render, this)
  	@collection.on('change', @render, this)


  render: ->
  	console.log '---- RENDERING THE VIEW'
  	$(@el).html(@template(notes: @collection))
  	this