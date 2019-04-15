$(document).ready(function() {
    $("#resetPasswordBtn").on('click',function() {
       var username=$(".infoResetField #usernameTxt").val().trim(); 
       var dob=$(".infoResetField #dateOfBirth").val().trim(); 
       var gender=$(".infoResetField #gender").val().trim(); 
       var email=$(".infoResetField #email").val().trim(); 
       var phoneNo=$(".infoResetField #phNumber").val().trim(); 
       if(username !=='' && dob!=='' && gender!=='' && email!=='' && phoneNo!=='') {
            $("#errorMessage").css("display","none");
            $.ajax({
                url: "resetPassword",
                type: "POST",
                //contentType: "application/json",
                data: "userName="+username+"&dateOfBirth="+dob+"&gender="+gender+"&email="+email+"&phNumber="+phoneNo,
                success: function (response) {
                    if (response) {
                        $(".passwordEntryField #username").val(username);
                        $(".passwordEntryField").css("display","block");
                        $(".infoResetField").css("display","none");
                    } else {
                        $("#errorMessage").css("display","block");
                        $("#errorMessage").text("* Please Check the Info You Have Entered!!!");
                        $(".infoResetField #usernameTxt").val("");
                        $(".infoResetField #dateOfBirth").val(""); 
                        $(".infoResetField #gender").val(""); 
                        $(".infoResetField #email").val(""); 
                        $(".infoResetField #phNumber").val(""); 
                    }
                }
           });
       } else {
           $("#errorMessage").css("display","block");
           $("#errorMessage").text("* Please Fill All the Fields");
       }
    });
    
    $("#updatePasswordBtn").click(function (event) {
        $("#errorMessage").css("display","none");
        event.preventDefault();
        var password = $(".passwordEntryField #password").val().trim();
        var cPassword = $(".passwordEntryField #cPassword").val().trim();
        if(password!=='' && cPassword!=='') {
            if (password === cPassword) {
                $(".passwordEntryField #originalPassword").val(password);
                alert($(".passwordEntryField #originalPassword").val());
                $(this).closest("form#passwordEntryFieldForm").submit();
            } else {
                $("#errorMessage").css("display","block");
                $("#errorMessage").text("* Password Mismatch!!!");
            }
        }
    });
});