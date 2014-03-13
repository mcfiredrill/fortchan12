$(document).ready(function() {
  var chans = [
    {
      name: 'Fort',
      url: 'http://fortchan.org'
    },
    {
      name: 'Wonky',
      url: 'http://50.116.28.134/~nik/wonkychan/'
    },
    {
      name: 'big',
      url: 'http://bigchan.heroku.com/'
    },
    {
      name: 'Gloomy',
      url: 'http://www.fortchan.org/boards/7'
    }
  ];

  $.each(chans, function(k, chan) {
    $(document.body).append(
      '<a href="'+chan.url+'">' +
        '<div class="chan">'+chan.name+'</div>' +
      '</a>'
    );
  });
});
