Fortchan12.PostsRoute = Ember.Route.extend
  model: ->
    Ember.RSVP.hash
      posts: @get('store').findAll 'post'
      newPost: @get('store').createRecord 'post'

  actions:
    create: (post) ->
      post.setProperties(this.controller.getProperties(['name','body','photo']))
      post.save()
