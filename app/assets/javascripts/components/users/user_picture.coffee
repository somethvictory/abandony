@UserPicture = React.createClass
  render: ->
    React.DOM.div
      className: ''
      React.DOM.a
        className: 'new-picture btn btn-primary'
        href: @props.new_picture_path
        'New Picture'
      React.createElement PictureList
