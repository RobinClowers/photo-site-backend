class LoginController
  constructor: ->
    @loadLoginView()

  loadLoginView: ->
    $.get '/login', (form) ->
        $(".login-view").append form

new LoginController()
