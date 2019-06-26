import "bootstrap";
import "select2"
import 'select2/dist/css/select2.css';

console.log("hey first console.log");

$(".alert-dismissible").fadeTo(2500, 500).slideUp(500, function(){
  $(".alert-dismissible").alert('close');
});

document.addEventListener("DOMContentLoaded", function(){
  $('.query-select-boxes').select2({dropdownAutoWidth: true})
})


/*document.addEventListener("DOMContentLoaded", function(){
  $("#select2Selector2").select2({
      placeholder: 'Continue your search here',
      minimumInputLength: 2,
    });
})*/


