$(document).ready(function(){
  $(".file-field").change(function() { this.form.submit(); });
  $(".add-image-thumbnail").click(function(){$(".file-field" ).trigger( "click" );});

  $("#dropZone").click(function(e){
      var tr = e.parentNode.parentNode;
        alert( tr.getAttribute('id') );
    });
});
