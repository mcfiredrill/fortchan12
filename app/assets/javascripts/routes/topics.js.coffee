Fortchan12.TopicsRoute = Ember.Route.extend
  model: ->
    @get('store').findAll 'topic'
