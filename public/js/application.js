$(document).ready(function() {
  $('#add_link').on("click", function(event) {
    event.preventDefault(); 

    $(this).hide();
    var url = $(this).attr('href')

    $.get(url, function(response){
      $('.container').append(response);

    });  
  });

  $('.container').on("submit", '#new_contact', function(event){
    event.preventDefault();

    var url = $(this).attr('action'); 
    var data = $(this).serialize(); 

    $.post(url, data, function( response ) {
      $('tbody').append(response);
    });

    $(this).remove();
    $('h1:last-child').remove(); 
    $("#add_link").show(); 

  });  
});

