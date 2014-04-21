# For more information see: http://emberjs.com/guides/routing/

Fortchan12.Router.map ()->
  @resource 'posts', path: '/', ()->
    @resource 'post', path: ':post_id'
