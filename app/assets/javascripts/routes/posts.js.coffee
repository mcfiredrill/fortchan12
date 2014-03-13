Fortchan12.PostsRoute = Ember.Route.extend
  model: ->
    @get('store').findAll('post')
