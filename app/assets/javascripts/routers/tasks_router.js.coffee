class ScratchPad.Routers.Tasks extends Backbone.Router


	routes:
		'tasks': 'tasks'
		'tasks/:id': 'show'

	initialize: ->
		console.log 'task route init'
		@collection = new ScratchPad.Collections.Tasks()


	tasks: ->
		console.log 'tasks'
		@collection.fetch().done =>
			console.log 'success tasks fetch'
			@renderTasksView()


	dashboard: ->
		view = new App.Views.DashboardIndex()
		$('#notes').html(view.render().el)
		

	renderTasksView: ->
		view = new App.Views.TasksIndex(collection: @collection)
		$('#notes').html(view.render().el)
		console.log @collection


	# show: ->
	# 	alert "Entry #{id}"