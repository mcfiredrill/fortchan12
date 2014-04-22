Fortchan12.MomentTransform = DS.Transform.extend({
  deserialize: function(serialized) {
    return moment(serialized);
  },
  serialize: function(deserialized) {
    if (deserialized && deserialized.format) {
      return deserialized.format('YYYY-MM-DDTHH:MM:SSZ');
    }
    return null;
  }
});
