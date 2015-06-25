// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



$(function() {
  var summer_note;
  summer_note = $('.summernote');
  summer_note.summernote({
    height: 300,
    lang: 'ko-KR',
    toolbar: [['insert', ['picture', 'link']], ["table", ["table"]], ["style", ["style"]], ["fontsize", ["fontsize"]], ["color", ["color"]], ["style", ["bold", "italic", "underline", "clear"]], ["para", ["ul", "ol", "paragraph"]], ["height", ["height"]], ["help", ["help"]]]
  });
  summer_note.code(summer_note.val());
  return summer_note.closest('form').submit(function() {
    summer_note.val(summer_note.code());
    return true;
  });
});