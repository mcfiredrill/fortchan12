Fortchan12.TopicsController = Ember.ArrayController.extend
  actions:
    create: (post) ->
      post.setProperties(@getProperties(['name','body','photo']))

      topic = @get('store').createRecord('topic')
      topic.get('posts').then (posts) ->
        posts.pushObject(post)

      topic.save().then =>

        @setProperties
          name: ''
          body: ''
          photo: ''

        @set('newPost', @get('store').createRecord('post'))

        post.set('topic', topic)
        post.save()
