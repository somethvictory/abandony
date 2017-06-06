@PictureList = React.createClass
  render: ->
    @_buildPicture()
  componentDidMount: ->
    @_initColorbox()

  _buildPicture: ->
    i = 0
    React.DOM.div
      className: 'row'
      while i < 60
        i++
        React.createElement PictureItem, key: i, picture: "/assets/#{i}.jpg"

  _initColorbox: ->
    $('a.gallery').colorbox
      rel: 'picture-group'
      maxWidth: '80%'
      maxHeight: '80%'
