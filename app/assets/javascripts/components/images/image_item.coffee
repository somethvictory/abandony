@ImageItem = React.createClass
  render: ->
    React.DOM.div
      className: 'col-xs-12 col-md-4 col-lg-3 image-item'
      React.DOM.img
        className: 'image'
        src: @props.image
