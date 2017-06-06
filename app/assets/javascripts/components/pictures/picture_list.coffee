@PictureList = React.createClass
  render: ->
    @_buildPicture()
  _buildPicture: ->
    i = 0
    React.DOM.div
      className: 'row'
      while i < 60
        i++
        React.createElement PictureItem, key: i, picture: "/assets/#{i}.jpg"
