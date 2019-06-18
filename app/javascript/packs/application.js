import "bootstrap";

$(".alert-dismissible").fadeTo(2500, 500).slideUp(500, function(){
  $(".alert-dismissible").alert('close');
});