Fortchan12.TopicController = Ember.ObjectController.extend
  name: null
  body: null
  photo: null

  actions:
    create: ->
      post = @get('store').createRecord('post')
      post.setProperties(@getProperties(['name','body','photo']))

      topic = @get('content')
      topic.get('posts').then (posts) ->
        posts.pushObject(post)

      topic.save().then =>

        @setProperties
          name: null
          body: null
          photo: null

        post.set('topic', topic)
        post.save()
