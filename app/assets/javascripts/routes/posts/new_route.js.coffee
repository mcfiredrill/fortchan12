Fortchan12.PostsNewRoute = Ember.Route.extend
  model: (params) ->
    @get('store').createRecord 'post'

  actions:
    create: (post) ->
      route = this
      post.save().then ->
        route.transitionTo('posts')
