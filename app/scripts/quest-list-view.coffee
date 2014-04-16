module.exports =

class QuestListView extends Backbone.View

	el: '#spa'

	template: require 'templates/quest-list-template'

	# events: 

	render: ->

		html = @template
		$(@el).html html

	initialize: ->

		console.log 'QuestListView init...'