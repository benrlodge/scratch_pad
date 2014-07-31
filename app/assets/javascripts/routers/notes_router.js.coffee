class ScratchPad.Routers.Notes extends Backbone.Router

	routes:
		'': 'index'
		'test': 'index'
		'entries/:id': 'show'

	initialize: ->
		console.log 'suck it routes'
		@collection = new ScratchPad.Collections.Notes()
		@collection.fetch()


	index: ->
		console.log 'we at the index yo'
		view = new App.Views.NotesIndex(collection: @collection)
		$('#notes').html(view.render().el)

	show: ->
		alert "Entry #{id}"