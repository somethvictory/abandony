@ImageList = React.createClass
  render: ->
    i = 0
    React.DOM.div
      className: 'row'
      while i < 60
        i++
        React.createElement ImageItem, key: i, image: "/assets/#{i}.jpg"
