import "bootstrap";
import "select2"
console.log("hey first console.log");

$(".alert-dismissible").fadeTo(2500, 500).slideUp(500, function(){
  $(".alert-dismissible").alert('close');
});




$(document).ready(function() {
  console.log("hey")
    $('.js-example-basic-multiple').select2();
});

