Fortchan12.PostsRoute = Ember.Route.extend
  model: ->
    Ember.RSVP.hash
      posts: @get('store').findAll 'post'
      newPost: @get('store').createRecord 'post'

  actions:
    create: (post) ->
      self = @
      post.setProperties(this.controller.getProperties(['name','body','photo']))
      post.save().then ->
        self.controller.setProperties({name: '', body: '', photo: ''})
        self.controller.set('newPost', self.get('store').createRecord('post'))

  setupController: (controller, model) ->
    controller.set('posts', this.get('store').all('post'))
    controller.set('newPost', model.newPost)
