class ScratchPad.Views.TasksIndex extends Backbone.View

  template: JST['tasks/index']


  initialize: ->
  	@collection.on('reset', @render, this)
  	@collection.on('change', @render, this)


  render: ->
  	console.log '---- RENDERING THE VIEW FOR TASKS'
  	$(@el).html(@template(tasks: @collection))
  	this