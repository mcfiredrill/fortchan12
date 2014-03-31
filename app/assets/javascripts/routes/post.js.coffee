Fortchan12.PostRoute = Ember.Route.extend
  model: ->
    @get('store').find('post')
