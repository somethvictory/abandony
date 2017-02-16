@UserList = React.createClass

  getInitialState: ->
    users: @props.users
    newPath: @props.new_path

  getDefaultProps: ->
    users: []
    newPath: ''

  render: ->
    React.DOM.div
      className: 'container'
      React.DOM.h1
        className: 'title'
        'Users'
      React.DOM.a
        className: 'btn btn-primary'
        href: @state.newPath
        'New User'

      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead
          className: 'table-header'
          React.DOM.tr
            className: ''
            React.DOM.th
              className: 'table-head'
              'First Name'
            React.DOM.th
              className: 'table-head'
              'Last Name'
            React.DOM.th
              className: 'table-head'
              'Email'
        React.DOM.tbody null,
          for user in @state.users
            React.createElement User, key: user.id, user: user
