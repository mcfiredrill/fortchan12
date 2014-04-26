Fortchan12.TopicsRoute = Ember.Route.extend
  model: ->
    @get('store').findAll 'topic'

  setupController: (controller, model) ->
    @_super.apply @, arguments
    controller.set('topics', model)
