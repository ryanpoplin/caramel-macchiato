module.exports =

class DefaultView extends Backbone.View

	el: '#spa'

	template: require 'templates/default-template'

	events:
		'click div#footer-btn': 'viewAnimation'

	viewAnimation: ->

		footerHeight = $('#default-footer').height()

		if footerHeight == 120

			$('#default-footer').animate({
					height: 325
				})

			$('#footer-btn').animate({
					bottom: 275
				})

			$('#default-section button').fadeOut(100);

			$('#log-sign').fadeOut(100);

			$('#log-sign-container button').fadeIn(100)

			$('#log-sign-container button').css('display', 'block')

			true 

		else if footerHeight == 324 

			$('#default-footer').animate({
					height: 120
				})

			$('#footer-btn').animate({
					bottom: 63
				})

			$('#default-section button').fadeIn();

			$('#log-sign').fadeIn();

			$('#log-sign-container button').fadeOut()

			$('#log-sign-container button').css('display', 'none')

			true

		false 			

	render: ->

		html = @template
		$(@el).html html

	initialize: ->

		console.log 'DefaultView init...'