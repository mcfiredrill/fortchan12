Fortchan12.TopicRoute = Ember.Route.extend
  model: (params) ->
    @get('store').find('topic', params.topic_id)

  setupController: (controller, model) ->
    @_super.apply @, arguments
    controller.set('newPost', @get('store').createRecord('post'))
