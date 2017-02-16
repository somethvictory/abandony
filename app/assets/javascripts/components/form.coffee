@UserForm = React.createClass
  getInitialState: ->
    user: @props.user
    userPath: @props.user_path

  handleFormSubmit: (e) ->
    e.preventDefault()
    $.post

  render: ->
    React.DOM.div null,
      React.DOM.form null,
        onsubmit: @handleFormSubmit
        React.DOM.div
          className: 'form-group'
          React.DOM.label
            className: 'First Name'
            'First Name'
          React.DOM.input
            className: 'form-control'
            name: 'first_name'
        React.DOM.div
          className: 'form-group'
          React.DOM.label
            className: 'Last Name'
            'Last Name'
          React.DOM.input
            className: 'form-control'
            name: 'last_name'
        React.DOM.div
          className: 'form-group'
          React.DOM.label
            className: 'Email'
            'Email'
          React.DOM.input
            className: 'form-control'
            name: 'email'
        React.DOM.button
          className: 'btn btn-primary'
          type: 'submit'
          'Submit'

