// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  return $("#calendar").fullCalendar({
  	lang: 'pt-br',
  	header: {
        left: '',
        center: 'prev title next',
        right: ''
    },
    events: '/events.json',
    eventClick: function(event, jsEvent) {
      var modal;
      modal = $("#modal");
      modal.find(".modal-title").html(event.title);
      modal.find(".modal-body").html(event.description);
      return modal.modal();
    }

  });
});