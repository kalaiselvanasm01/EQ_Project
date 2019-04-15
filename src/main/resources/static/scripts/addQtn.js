$(document).ready(function() {
   $("#addQtnBtn").on('click',function(event) {
       event.preventDefault();
       var finalChoice="";
       $(".choices").each(function(index) {
           var choice=$(this).val().trim();
           if(choice!==''&& choice!==undefined) {
               finalChoice+=choice+"##";
           }
           $('.dept').each(function(index1) {
               if(index1===index) {
                   var dept=$(this).val().trim();
                   if(dept!=='' && dept!==undefined) {
                       finalChoice+=dept+"@@";
                   }
               }
           });
       });
       $("#choices").val(finalChoice);
       $(this).closest("form").submit();
   });
   
   $("#imageFile").on("change",function() {
        var reader = new FileReader();

        if(this.files[0].size>1048576) {
            alert("Size of Image File Should be within 1MB");
            $(this).val('');
        } else {
            reader.onload = function (e) {
                $('#previewImage').attr('src', e.target.result);
            };
            reader.readAsDataURL(this.files[0]);
        }
   });
   
   $("#hasImage").on("change",function() {
      $("#imageFile").prop("disabled",!$(this).is(":checked")); 
      $('.previewImage').prop("hidden",!$(this).is(":checked"));
   });
});