// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$("form").submit(function(){
    var dataSet = $(this).serialize();
    $.ajax({
        type: "POST",
        url: $(this).attr("action"),
        data: dataSet,
        success: function(data){
              $('#transparencia_table').html(data)
        }
    });
    return false;
});
