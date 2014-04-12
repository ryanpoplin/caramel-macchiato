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
					height: 240
				})

			$('#footer-btn').animate({
					bottom: 183
				})

			$('#log-sign').fadeOut();

			true 

		else if footerHeight == 240 

			$('#default-footer').animate({
					height: 120
				})

			$('#footer-btn').animate({
					bottom: 63
				})

			$('#log-sign').fadeIn();

			true

		false 			

	render: ->

		html = @template
		$(@el).html html

	initialize: ->

		console.log 'DefaultView init...'