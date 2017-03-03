$(document).ready(function(){
  $('.post-new-feel').on('click', function(e){
    e.preventDefault();

    var $form = $(this).closest('#create-new-feel');
    var url = $form.attr('action')
    var type = $form.attr('method')
    var data = $form.serialize();

    $.ajax({
      url: url,
      type: type,
      data: data,
    })
    .done(function(response) {
      $form.prepend(response);
    })
    .fail(function(){
      console.log("here")
    })
  })
})
