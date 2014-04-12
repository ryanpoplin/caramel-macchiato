module.exports =

class DefaultView extends Backbone.View

	el: '#spa'

	template: require 'templates/default-template'

	render: ->

		html = @template
		$(@el).html html

	initialize: ->

		console.log 'AppRouter init...'