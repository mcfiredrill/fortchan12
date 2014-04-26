Fortchan12.PostsController = Ember.ArrayController.extend
  name: null
  body: null
  photo: null

  reversedPosts: (->
    @get('posts').sortBy('createdAt').toArray().reverse()
  ).property('posts.[]')

  actions:
    create: ->
      post = @get('store').createRecord('post')
      post.setProperties(@getProperties(['name','body','photo']))
      post.save().then =>
        @setProperties
          name: null
          body: null
          photo: null
