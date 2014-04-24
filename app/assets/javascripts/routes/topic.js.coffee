Fortchan12.TopicRoute = Ember.Route.extend
  model: (params) ->
    @get('store').find('topic', params.topic_id)
