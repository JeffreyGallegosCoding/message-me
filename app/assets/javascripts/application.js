// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require turbolinks
//= require semantic-ui
//= require_tree .

scroll_bottom = function() {
    // What this does: if the length of your messages container if not blank scroll to the top of the 0 element's height
    // So basically scroll to the last message in the chatbox
    if ($('#messages').length > 0) {
        $('#messages').scrollTop($('#messages')[0].scrollHeight);
    }
}

submit_message = function() {
    // On the keydown event (e) is the enter keycode (13) then treat it like clicking the enter button
    $('#message_body').on('keydown', function(e) {
        if (e.keycode == 13) {
            $('button').click();
        }
    })
}

// Clears the text field after submitting a new message
$(document).bind("ajax:beforeSend", function(){
    $('#message_body').val('');
});


// What you want on page load
$(document).on('turbolinks:load', function () {
    $('.ui.dropdown').dropdown();
    $('.message .close').on('click', function() {
        $(this).closest('.message').transition('fade');
    });
    submit_message();
    scroll_bottom();
})


