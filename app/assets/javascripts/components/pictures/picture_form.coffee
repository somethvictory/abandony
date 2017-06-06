@PictureForm = React.createClass
  getInitialState: ->
    title: ''
    picture: null
    description: ''

  handleChange: (e)->
    name  = e.target.value
    value = e.target.value
    @setState("#{@states[name]}": value)

  handleSubmit: (e)->
    e.preventDefault()
    console.log(@states, '----------states')

  render: ->
    React.DOM.div
      className: 'picture-form'
      React.DOM.form
        className: ''
        onSubmit: @handleSubmit
        React.DOM.div
          className: 'form-group'
          React.DOM.label
            className: ''
            'Title'
          React.DOM.input
            className: 'form-control'
            type: 'text'
            name: 'title'
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.label
            className: ''
            'Picture'
          React.DOM.input
            type: 'file'
            name: 'picture'
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.label
            className: ''
            'Description'
          React.DOM.textarea
            className: 'form-control'
            name: 'description'
            onChange: @handleChange
        React.DOM.button
          className: 'btn btn-primary'
          type: 'submit'
          'Create Picture'
