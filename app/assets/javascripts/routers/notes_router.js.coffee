class ScratchPad.Routers.Notes extends Backbone.Router

	routes:
		'': 'index'
		'test': 'index'
		'api/:id': 'show'

	initialize: ->
		@collection = new ScratchPad.Collections.Notes()


	index: ->
		@collection.fetch().done =>
			console.log 'success'
			@renderView()
		

	renderView: ->
		view = new App.Views.NotesIndex(collection: @collection)
		$('#notes').html(view.render().el)
		console.log @collection


	show: ->
		alert "Entry #{id}"