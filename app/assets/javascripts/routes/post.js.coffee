Fortchan12.PostRoute = Ember.Route.extend
  model: (params) ->
    @get('store').find('post', params.post_id)

