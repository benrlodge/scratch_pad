class ScratchPad.Views.NotesIndex extends Backbone.View

  template: JST['notes/index']


  initialize: ->
  	@collection.on('reset', @render, this)

  render: ->
  	$(@el).html(@template(notes: @collection))
  	this