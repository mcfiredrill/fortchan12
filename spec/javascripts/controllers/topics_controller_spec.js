moduleFor('controller:topics', 'Topics Controller');

test('name, body, and photo default to null', function() {
  expect(3);

  // get the controller instance
  var ctrl = this.subject();

  equal(ctrl.get('name'), null);
  equal(ctrl.get('body'), null);
  equal(ctrl.get('photo'), null);
});
