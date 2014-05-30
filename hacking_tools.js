var makePost = function(text) {
  var store = Fortchan12.__container__.lookup('store:main');
  var post = store.createRecord('post');
  post.setProperties({
    name: 'silly souls',
    body: text,
    photo: null
  });

  var topic = store.createRecord('topic');
  topic.get('posts').then(function(posts) {
    posts.pushObject(post);
  });

  topic.save().then(function() {
    post.set('topic', topic);
    post.save();
  })
};

var tools = {};
var loop = function(text) {
  tools.job = setInterval('makePost("'+text+'")',2000);
  // clearInterval(tools.job);
};

