AppRouter = require 'scripts/router'

class Application extends Backbone.Marionette.Application
  initialize: =>
    @on 'initialize:after', @startHistory

    new AppRouter

    @start()

  startHistory: (options) => Backbone.history.start()


module.exports = Application

