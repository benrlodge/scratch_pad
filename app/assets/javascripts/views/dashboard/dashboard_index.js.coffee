class ScratchPad.Views.DashboardIndex extends Backbone.View

  template: JST['dashboard/index']


  initialize: ->
  	console.log 'init the dashboard view'
  	# @collection.on('reset', @render, this)
  	# @collection.on('change', @render, this)


  render: ->
  	console.log '---- RENDERING THE VIEW'
  	# $(@el).html(@template(notes: @collection))
  	$(@el).html(@template())
  	this