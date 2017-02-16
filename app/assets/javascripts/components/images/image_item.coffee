@ImageItem = React.createClass
  render: ->
    React.DOM.div
      className: 'col-xs-12 col-md-4 col-lg-3'
      React.DOM.img
        className: 'image-item'
        src: @props.image
