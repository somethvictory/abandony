@User = React.createClass
  getInitialState: ->
    user = @props.user
  getDefaultProps: ->
    user: {}
  render: ->
    React.DOM.tr
      className: 'user-item'
      React.DOM.td
        className: 'first-name'
        @props.user.first_name
      React.DOM.td
        className: 'last-name'
        @props.user.last_name
      React.DOM.td
        className: 'email'
        @props.user.email
