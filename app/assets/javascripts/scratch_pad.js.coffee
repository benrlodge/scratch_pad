window.ScratchPad =
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}
	initialize: ->
		new App.Routers.Notes()
		new App.Routers.Tasks()
		Backbone.history.start()


window.App = window.ScratchPad

window.log = (m) -> console.log m

$(document).ready ->
	ScratchPad.initialize()