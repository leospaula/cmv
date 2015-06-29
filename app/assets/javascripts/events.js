// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  return $("#calendar").fullCalendar({
  	lang: 'pt-br',
  	height: 200,
    events: '/events.json'
  });
});