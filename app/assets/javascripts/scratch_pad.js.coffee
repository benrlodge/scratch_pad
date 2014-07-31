window.ScratchPad =
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}
	initialize: ->
		console.log 'hey'
		new App.Routers.Notes()
		Backbone.history.start()


window.App = window.ScratchPad

$(document).ready ->
	ScratchPad.initialize()