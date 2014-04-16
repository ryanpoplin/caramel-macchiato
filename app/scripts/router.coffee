module.exports = 

class AppRouter extends Backbone.Router

	routes: 

		'': 'defaultRoute'
		'close': 'defaultRoute'
		'questNow': 'questNow'

	defaultRoute: ->

		DefaultView = require 'scripts/default-view'
		defaultView = new DefaultView 
		defaultView.render()

	questNow: ->

		QuestListView = require 'scripts/quest-list-view'
		questListView = new QuestListView
		questListView.render()

	initialize: ->

		console.log 'AppRouter init...'