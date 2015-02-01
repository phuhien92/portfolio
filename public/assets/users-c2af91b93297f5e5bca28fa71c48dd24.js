(function() {
  $(document).ready(function() {
    return $('.delete_user').bind('ajax:success', function() {
      return $(this).closest('tr').fadeOut();
    });
  });

}).call(this);
