// https://bhuvans.wordpress.com/2007/01/22/crazy-cool-javascript-hacks/

var crazyimage = {};
crazyimage.R = 0;
crazyimage.A = function() {
  var x1=.1,
    y1=.05,
    x2=.25,
    y2=.24,
    x3=1.6,
    y3=.24,
    x4=300,
    y4=200,
    x5=300,
    y5=200,
    DI = document.images,
    DIL = DI.length;
  for(var i=0; i-DIL; i++) {
    var DIS=DI[ i ].style;
    DIS.position='absolute';
    DIS.left=(Math.sin(crazyimage.R*x1+i*x2+x3)*x4+x5)+"px";
    DIS.top=(Math.cos(crazyimage.R*y1+i*y2+y3)*y4+y5)+"px"
  }
  crazyimage.R++;
};
crazyimage.start = function() {
  setInterval('crazyimage.A()',5);
};
