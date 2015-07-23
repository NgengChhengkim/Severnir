$(document).ready(function(){
  $(".file-field").change(function() { this.form.submit(); });
  $(document).on("click", ".add-image-thumbnail", function(){
    $(".file-field" ).trigger( "click" );
  });

   NProgress.start();
});

