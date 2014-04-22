Fortchan12.PostsRoute = Ember.Route.extend
  model: ->
    @get('store').findAll 'post'

  setupController: (controller, model) ->
    @_super.apply @, arguments
    controller.set('posts', model)
    controller.set('newPost', @get('store').createRecord('post'))
