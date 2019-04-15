$(document).ready(function() {
    $("#editQtnDiv").hide();
    $("#selectQtnDiv").show();
    $("#editQtnBtn").on("click",function() {
        var questionNo=$("#questionsId").val();
        if(questionNo!=='') {
            $.ajax({
                url: "editQuestion",
                type: "POST",
                contentType: "application/json",
                data: questionNo,
                success: function (response) {
                    if (response!==null && response!=='' && response !== undefined) {
                        $("#editQtnDiv #questionNo").val(response.questionNo);
                        $("#editQtnDiv #question").val(response.question);
                        $("#editQtnDiv #firstCh").val(response.choiceList[0]);
                        $("#editQtnDiv #secondCh").val(response.choiceList[1]);
                        $("#editQtnDiv #thirdCh").val(response.choiceList[2]);
                        $("#editQtnDiv #fourthCh").val(response.choiceList[3]);
                        $("#editQtnDiv #fifthCh").val(response.choiceList[4]);
                        $("#editQtnDiv #sixthCh").val(response.choiceList[5]);
                        $("#editQtnDiv #firstDept").val(response.deptList[0]);
                        $("#editQtnDiv #secondDept").val(response.deptList[1]);
                        $("#editQtnDiv #thirdDept").val(response.deptList[2]);
                        $("#editQtnDiv #fourthDept").val(response.deptList[3]);
                        $("#editQtnDiv #fifthDept").val(response.deptList[4]);
                        $("#editQtnDiv #sixthDept").val(response.deptList[5]);
                        $("#editQtnDiv #hasImage").attr("checked",response.hasImage);
                        $("#editQtnDiv #imageFile").attr("data-oldsrc",response.imageName)
                        if(response.hasImage) {
                            $("#previewImage").css("display","block")
                            $("#previewImage").attr("src","/qtnImages/"+response.imageName);
                        } else {
                            $("#previewImage").css("display","none");
                        }
                        $("#imageFile").prop("disabled",!$("#hasImage").is(":checked")); 
                        $('.previewImage').prop("hidden",!$("#hasImage").is(":checked"));
                        $("#editQtnDiv").show();
                        $("#selectQtnDiv").hide();
                    }
                }
            });
        } else {
            alert('Please Select any Question for editing!!!');
        }
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
   
   $("#updateQtnBtn").on('click',function(event) {
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
       var qtnImg=$("#editQtnDiv #imageFile");
       if(qtnImg.val().trim()==='') {
           qtnImg.attr("name","");
           $(this).closest("form").append('<input type="hidden" name="imageName" value="'+qtnImg.data("oldsrc")+'"').submit();
       } else {
           $(this).closest("form").submit();
       }
   });
});