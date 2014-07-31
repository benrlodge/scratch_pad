class ScratchPad.Routers.Notes extends Backbone.Router

	routes:
		'': 'dashboard'
		'notes': 'notes'
		'api/:id': 'show'

	initialize: ->
		@collection = new ScratchPad.Collections.Notes()


	notes: ->
		@collection.fetch().done =>
			console.log 'success'
			@renderNotesView()


	dashboard: ->
		view = new App.Views.DashboardIndex()
		$('#notes').html(view.render().el)
		

	renderNotesView: ->
		view = new App.Views.NotesIndex(collection: @collection)
		$('#notes').html(view.render().el)
		console.log @collection


	show: ->
		alert "Entry #{id}"