$(document ).ready(function() {
console.log("running this function");
  $('#new_user').on('submit', function(event){
     event.preventDefault();
     var user = $('#new_user').serialize();
     $.ajax({
         url: '/users ',
         type: "POST",
         data: user,
         success: function(data) {
             $("#register_modal_error").removeClass('hidden');            
             $("#register_modal_error").text(data);
         },
         error: function(error) {
            $("#register_modal_error").removeClass('hidden');
             $("#register_modal_error").text(error.responseText);
             console.log('in the error');
         }
     });
  });
});