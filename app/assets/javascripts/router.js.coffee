# For more information see: http://emberjs.com/guides/routing/

Fortchan12.Router.map ()->
  @resource 'posts', ()->
    @resource 'post', path: ':post_id'
    @route 'new'
