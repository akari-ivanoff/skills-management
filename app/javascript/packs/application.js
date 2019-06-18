import "bootstrap";

$(".alert-dismissible").fadeTo(3000, 500).slideUp(500, function(){
  $(".alert-dismissible").alert('close');
});