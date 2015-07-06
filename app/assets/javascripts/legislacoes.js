// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
$('#revogado_por').hide();
$('#legislacao_situacao').change(function(){

   var selection = $(this).val();
   if(selection == 'Revogado')
   {
      $('#revogado_por').show();
   }
   else
   {
      $('#revogado_por').hide();
   } 

});
});