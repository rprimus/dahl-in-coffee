(function() {

  setTimeout(function() {
    return console.log('World');
  }, 2000);

  console.log('Hello');

}).call(this);
