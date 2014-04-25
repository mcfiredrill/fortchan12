Fortchan12.TopicController = Ember.ObjectController.extend
  actions:
    create: (post) ->
      post.setProperties(@getProperties(['name','body','photo']))
      console.log(@)
      console.log(@get('content'))

      topic = @get('content')
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
