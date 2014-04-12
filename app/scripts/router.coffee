module.exports = 

class AppRouter extends Backbone.Router

	routes: 

		'': 'defaultRoute'

	defaultRoute: ->

		DefaultView = require 'scripts/default-view'
		defaultView = new DefaultView 
		defaultView.render()

	initialize: ->

		console.log 'AppRouter init...'