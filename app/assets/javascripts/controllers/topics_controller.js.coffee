Fortchan12.TopicsController = Ember.ArrayController.extend
  name: null
  body: null
  photo: null

  reversedTopics: (->
    @get('topics').sortBy('updatedAt').toArray().reverse()
  ).property('topics.[]')

  actions:
    create: ->
      post = @get('store').createRecord('post')
      post.setProperties(@getProperties(['name','body','photo']))

      topic = @get('store').createRecord('topic')
      topic.get('posts').then (posts) ->
        posts.pushObject(post)

      topic.save().then =>

        @setProperties
          name: ''
          body: ''
          photo: ''

        post.set('topic', topic)
        post.save()
