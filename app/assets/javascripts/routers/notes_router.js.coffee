class ScratchPad.Routers.Notes extends Backbone.Router

	routes:
		'': 'notes'
		'notes': 'notes'
		'notes/:id': 'show'

	initialize: ->
		@collection = new ScratchPad.Collections.Notes()

	notes: ->
		@collection.fetch().done =>
			console.log 'success'
			@notesPreview()
			@new()

	new: ->
		view = new App.Views.NotesNew(collection: @collection)
		$('#app-view .l-note-entry').html(view.render().el)

	# dashboard: ->
	# 	view = new App.Views.DashboardIndex()
	# 	# $('#notes .l-notes--list').html(view.render().el)

	notesPreview: ->
		view = new App.Views.NotesIndex(collection: @collection)
		# $('#notes').html(view.render().el)
		$('#app-view .l-notes--list').html(view.render().el)
		console.log @collection


	show: (id) ->
		# alert "Entry #{id}"
		# view = new App.Views.NotesIndex(collection: @collection)
		# $('#notes .l-note-entry').html(view.render().el)
		# console.log @collection		