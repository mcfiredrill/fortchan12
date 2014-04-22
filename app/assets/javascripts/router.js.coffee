Fortchan12.Router.map ()->
  @resource 'posts', path: '/', ()->
    @resource 'post', path: ':post_id'
