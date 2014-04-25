module("Homepage", {
  setup: function() {
    Fortchan12.reset();
  }
});

test("homepage", function() {
  expect(1);

  visit("/").then(function() {
    equal(Fortchan12.get('isDestroyed'), false, "Fortchan12 is active");
  });
});
