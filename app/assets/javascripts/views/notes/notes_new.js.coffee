class ScratchPad.Views.NotesNew extends Backbone.View

	template: JST['notes/new']


	initialize: ->
		@collection.on('reset', @render, this)
		@collection.on('change', @render, this)

	events:
		"click .m-notes-form--btn-submit" : "createNote"

	render: ->
		console.log '---- RENDERING THE VIEW: notes/new'
		log @collection
		$(@el).html(@template(notes: @collection))
		this

	createNote: ->

		log 'oh shit this is a new note'
		title = $('.m-notes-form--input-title').val()
		content =  $('.m-notes-form--input-content').val()

		@collection.create({
			'title': title
			'content': content
		})




