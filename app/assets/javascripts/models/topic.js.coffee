Fortchan12.Topic = DS.Model.extend
  posts: DS.hasMany 'post', async: true
  updatedAt: DS.attr 'date'
