(function() {
  var LoginController;

  LoginController = (function() {
    function LoginController() {
      this.loadLoginView();
    }

    LoginController.prototype.loadLoginView = function() {
      var host, path,
        _this = this;

      host = "backend.photo-site.dev";
      path = "//" + host + "/login";
      return $.ajax(path, {
        method: 'get',
        success: function(form) {
          return $(".login-view").append(form);
        }
      });
    };

    return LoginController;

  })();

  document.domain = 'photo-site.dev';

  new LoginController();

}).call(this);
