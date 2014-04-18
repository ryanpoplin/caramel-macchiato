module.exports =

class DefaultView extends Backbone.View

	el: '#spa'

	template: require 'templates/default-template'

	events:
		'click div#footer-btn': 'viewAnimation'
		'click a.close': 'openDrawer'

	viewAnimation: ->

		footerHeight = $('#default-footer').height()

		if footerHeight == 120

			$('#default-section button').fadeOut(50);

			$('#footer-btn').css('transform', 'rotate(180deg) scaleX(-1)');

			$('#default-footer')
				.stop()
				.animate({
					height: 325
				})
				.end()

			$('#footer-btn')
				.stop(10)
				.animate({
					bottom: 275
				})
				.end(10)

			$('#log-sign-container button').css('display', 'inline-block')

			$('#log-sign-container button').fadeIn(100)

			$('.log-sign-span').fadeIn(100)

			$('p.extra-span').css('display', 'block')

			$('p#facebook-hell').css('display', 'block')

			$('span.extra-color').css('display', 'inline')

			true 

		else if footerHeight >= 324 

			$('div.modal').css('display', 'none')

			$('#default-section button').fadeIn(500)

			$('#footer-btn').css('transform', 'rotate(360deg) scaleX(-1)')

			$('.log-sign-span').css('display', 'none')

			$('#default-footer')
				.stop()
				.animate({
					height: 120
				})
				.end()

			$('#footer-btn')
				.stop(10)
				.animate({
					bottom: 63
				})
				.end(10)

			$('#log-sign-container button').fadeOut()

			$('#log-sign-container button').css('display', 'none')

			$('span.log-sign-span').css('display', 'none')

			$('p.extra-span').css('display', 'none')

			$('p#facebook-hell').css('display', 'none')

			$('span.extra-color').css('display', 'none')

			true

		false 

	openDrawer: ->
		
		setTimeout ( ->
			$('div#footer-btn').click()
		), 300

	render: ->

		html = @template
		$(@el).html html

	initialize: ->

		console.log 'DefaultView init...'