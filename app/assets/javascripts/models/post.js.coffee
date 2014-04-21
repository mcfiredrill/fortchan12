# for more details see: http://emberjs.com/guides/models/defining-models/

Fortchan12.Post = DS.Model.extend
  name: DS.attr 'string'
  body: DS.attr 'string'
  photo_url: DS.attr 'string'
  photo_thumb_url: DS.attr 'string'
  photo: DS.attr 'string'
