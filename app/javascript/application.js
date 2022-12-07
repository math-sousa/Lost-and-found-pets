// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//hide comments functionality
$(document).ready(function() {
    var hide_comment_sections = [];

    $('.hide').each(function() {
        $('#' +  $(this).attr('data-comment-section-id')).hide();
        hide_comment_sections.push($(this).attr('data-comment-section-id'));
        $(this).on('click', function(event) {
            if (hide_comment_sections.indexOf($(this).attr('data-comment-section-id')) == -1) {
                $('#' +  $(this).attr('data-comment-section-id')).hide();
                hide_comment_sections.push($(this).attr('data-comment-section-id'));
            }else{
                $('#' +  $(this).attr('data-comment-section-id')).show();
                hide_comment_sections.splice(hide_comment_sections.indexOf($(this).attr('data-comment-section-id')), 1);
            }
            event.preventDefault(); 
        });
    });
});
