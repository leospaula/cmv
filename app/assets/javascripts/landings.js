// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


// **********************************************
// Galeria

 $(document).ready(function(){
           $('li img').on('click',function(){
                var src = $(this).attr('src');
                var img = '<img src="' + src + '" class="img-responsive"/>';
                $('#myModal').modal();
                $('#myModal').on('shown.bs.modal', function(){
                    $('#myModal .modal-body').html(img);
                });
                $('#myModal').on('hidden.bs.modal', function(){
                    $('#myModal .modal-body').html('');
                });
           });  
        })
