Fortchan12.UploadFile = Ember.TextField.extend
  tagName: 'input'
  attributeBindings: ['name'],
  type: 'file'
  file: null,
  change: (e) ->
    reader = new FileReader()
    that = this
    reader.onload = (e) ->
      fileToUpload = e.srcElement.result
      Ember.run ->
        that.set('file', fileToUpload)
    reader.readAsDataURL(e.target.files[0])
