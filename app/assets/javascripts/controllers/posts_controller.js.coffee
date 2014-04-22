Fortchan12.PostsController = Ember.ArrayController.extend
  reversedPosts: (->
    @get('posts').sortBy('createdAt').toArray().reverse()
  ).property('posts.[]')

  actions:
    create: (post) ->
      post.setProperties(@getProperties(['name','body','photo']))
      post.save().then =>
        @setProperties
          name: ''
          body: ''
          photo: ''

        @set('newPost', @get('store').createRecord('post'))
