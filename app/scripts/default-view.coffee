module.exports =

class DefaultView extends Backbone.View

	el: '#spa'

	template: require 'templates/default-template'

	events:
		'click div#footer-btn': 'viewAnimation'
		'click button.facebook': 'facebookModal'
		'click button.email': 'emailModal'

	viewAnimation: ->

		footerHeight = $('#default-footer').height()

		if footerHeight == 120

			$('#default-section button').fadeOut(100);

			$('#footer-btn').css('transform', 'rotate(180deg) scaleX(-1)');

			$('#default-footer').animate({
					height: 325
				})

			$('#footer-btn').animate({
					bottom: 275
				})

			$('#log-sign').fadeOut(100);

			$('#log-sign-container button').css('display', 'block')

			$('#log-sign-container button').fadeIn(100)

			$('.log-sign-span').fadeIn(100)

			true 

		else if footerHeight == 324 

			$('#default-section button').fadeIn(100);

			$('#footer-btn').css('transform', 'rotate(360deg) scaleX(-1)');

			$('.log-sign-span').css('display', 'none')

			$('#default-footer').animate({
					height: 120
				})

			$('#footer-btn').animate({
					bottom: 63
				})

			$('#log-sign-container button').fadeOut()

			$('#log-sign-container button').css('display', 'none')

			$('#log-sign').fadeIn(100);

			true

		false 	

	facebookModal: ->

		alert 'Facebook...'

	emailModal: ->

		alert 'Email...'		

	render: ->

		html = @template
		$(@el).html html

	initialize: ->

		console.log 'DefaultView init...'