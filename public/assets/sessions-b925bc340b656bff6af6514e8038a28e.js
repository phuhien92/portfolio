(function() {
  $(document).ready(function() {
    var $submitBtn;
    $submitBtn = $('.dropdown-menu').find('input[type="submit"]');
    return $submitBtn.bind('ajax:failure', function() {
      return $('.login-comments').text('Username/password is invalid !');
    }).bind('ajax:success', function() {
      return $('.login-comments').text('Login successfull !');
    });
  });

}).call(this);
