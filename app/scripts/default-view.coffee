module.exports =

class DefaultView extends Backbone.View

	el: '#spa'

	template: require 'templates/default-template'

	events:
		'click div#footer-btn': 'footerAnimate'

	footerAnimate: ->

		footerHeight = $('#default-footer').height()

		if footerHeight == 120

			$('#default-footer').animate({
					height: 220
				})

			$('#footer-btn').animate({
					bottom: 163
				})

			true 

		else if footerHeight == 220 

			$('#default-footer').animate({
					height: 120
				})

			$('#footer-btn').animate({
					bottom: 63
				})

			true

		false 			

	render: ->

		html = @template
		$(@el).html html

	initialize: ->

		console.log 'DefaultView init...'