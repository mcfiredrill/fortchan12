# For more information see: http://emberjs.com/guides/routing/

Fortchan12.Router.map ()->
  @resource 'posts', ()->
    @route('new')
  @resource 'post', path: '/posts/:post_id'
