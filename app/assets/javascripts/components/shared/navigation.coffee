@Nagivation = React.createClass
  render: ->
    React.DOM.nav
      className: 'navbar navbar-inverse'
      React.DOM.div
        className: 'container'
        React.DOM.div
          className: 'navbar-header'
          React.DOM.button
            className: 'navbar-toggle collapsed'
            'aria-expanded': false
            'data-target': '#main-nav'
            'data-toggle': 'collapse'
            type: 'button'
            React.DOM.span
              className: 'sr-only'
              'Toggle navigation'
            React.DOM.span
              className: 'icon-bar'
            React.DOM.span
              className: 'icon-bar'
            React.DOM.span
              className: 'icon-bar'
          React.DOM.a
            className: 'navbar-brand'
            href: '#'
            'Abandony'
        React.DOM.div
          className: 'collapse navbar-collapse'
          id: 'main-nav'
          React.DOM.ul
            className: 'nav navbar-nav navbar-right'
            if @props.user_signed_in
              React.DOM.li
                className: 'dropdown'
                React.DOM.a
                  className: 'dropdown-toggle'
                  'data-toggle':  'dropdown'
                  href: '#'
                  @props.user.email
                  React.DOM.b
                    className: 'caret'
                React.DOM.ul
                  className: 'dropdown-menu'
                  React.DOM.li
                    className: ''
                    React.DOM.a
                      className: ''
                      href: @props.pictures_path
                      'My Pictures'
                  React.DOM.li
                    className: ''
                    React.DOM.a
                      className: ''
                      href: @props.edit_user_path
                      'Manage Account'
                  React.DOM.li
                    className: 'divider'
                  React.DOM.li
                    className: ''
                    React.DOM.a
                      className: ''
                      href: @props.sign_out_path
                      'data-method': 'delete'
                      'Sign Out'
            else
              React.DOM.li
                className: ''
                React.DOM.a
                  className: 'ii'
                  href:      @props.sign_in_path
                  'Login'
