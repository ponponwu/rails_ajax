$(document).ready(function() {
  $("#user_job").change(function() {
    $.ajax({
      url: '/users/select',
      type: 'POST',
      dataType: 'json',
      data: {
        job: $(this).val(),
        user: 1
      }
    }).done(function(data) {
    	console.log(data);
    });
  });
});
