@PictureItem = React.createClass
  render: ->
    React.DOM.div
      className: 'col-xs-12 col-md-4 col-lg-3 picture-item'
      React.DOM.a
        className: 'gallery'
        href: @props.picture
        React.DOM.img
          className: 'picture'
          src: @props.picture
