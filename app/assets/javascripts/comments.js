$(document).on('turbolinks:load', function() {
    $('#comments-link').click(function() {
        $('#comments-section').fadeToggle()
    })
})