$(document).ready(function () {
    $("#registerScreen").modal({backdrop:"static"});
    $("#registerBtn").click(function (event) {
        event.preventDefault();
        var password = $("#registerForm #opassword").val().trim();
        var cPassword = $("#registerForm #cPassword").val().trim();
        if(password!=='' && cPassword!=='') {
            if (password === cPassword) {
                $("#registerForm #originalPassword").val(password);
                  
            } else {
                alert("Password Mismatch!!!");
            }
        }
        
        if($("#firstName").val() != ""){
         if($("#dateOfBirth").val() != ""){
        	 if($("#fatherName").val()  != ""){
        		 if($("#address").val()  != ""){
        			 if($("#religion").val()  != ""){
        				 if($("#expObtHSCMark").val()  != ""){
        					 if($("#expectedDept").val()  != ""){
        						 if($("#opassword").val()  != ""){
        						 if($("#email").val()  != ""){
        							 if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(registerForm.email.value)){
        								 if($("#gender").val() != ""){
        									 if($("#username").val() != ""){
        										 if($("#nationality").val() != ""){
        											 if($("#cPassword").val() != ""){
        												 if($("#bloodGroup").val() != ""){
        												 
        												 $(this).closest("form#registerForm").submit();
        												 }else{
        													 $("#bloodGroup").focus();
        												 }
        											 }else{
        												 $("#cPassword").focus();
        											 }
        											 
        										 }else{
        											 $("#nationality").focus();
        										 }
        										 
        									 }else{
        										 $("#username").focus();
        									 }
        									 
        								 }else{
        									 $("#gender").focus();
        								 }
        								
        							 }
        							 else{
        								 alert("enter the valid mail id");
        								 $("#email").focus();
        							 }
        						    
        						 } else{
        							    $("#email").focus();
        							 }
        							 
        						 }else{
        							 $("#opassword").focus();
        						 }
        						 
        					 }else{
        						 $("#expectedDept").focus();  
        					 }
        					 
        				 }else{
        					 $("#expObtHSCMark").focus(); 
        				 }
        				 
        			 }else{
        				 $("#religion").focus();
        			 }
        	 
        		 }else{
        			 $("#address").focus();
        			 }
        		 }
        		 else{
        		 $("#fatherName").focus();
        	 }
         }	else{
        	 $("#dateOfBirth").focus();
         }
        }else{
        	$("#firstName").focus();
        }
	        
//		
// if($("#firstName").val() == ""){
// $("#firstName").focus();
//	
//
// if($("#dateOfBirth").val() == ""){
// $("#dateOfBirth").focus();
// return false;
// }
// if($("#fatherName").val() == ""){
// $("#fatherName").focus();
// return false;
// }
// if($("#address").val() == ""){
// $("#address").focus();
// return false;
// }
// if($("#religion").val() == ""){
// $("#religion").focus();
// return false;
// }
// if($("#expObtHSCMark").val() == ""){
// $("#expObtHSCMark").focus();
// return false;
// }
// if($("#expectedDept").val() == ""){
// $("#expectedDept").focus();
// return false;
// }
// if($("#opassword").val() == ""){
// $("#opassword").focus();
// return false;
// }
//
// if($("#email").val() == ""){
// $("#email").focus();
// event.preventDefault();
// return false;
// }
// if
// (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(registerForm.email.value))
// {
// return (true)
// }
// else{
// alert("You have entered an invalid email address!");
// $("#email").focus();
// return false;
// }
//	
// if($("#gender").val() == ""){
// $("#gender").focus();
// return false;
// }
// if($("#username").val() == ""){
// $("#username").focus();
// return false;
// }
// if($("#nationality").val() == ""){
// $("#nationality").focus();
// return false;
// }
// if($("#hscGroup").val() == ""){
// $("#hscGroup").focus();
// return false;
// }
//
//
//
//
// if($("#bloodGroup").val() == ""){
// $("#bloodGroup").focus();
// return false;
// }
//
// if($("#cPassword").val() == ""){
// console.log("cpswd",$("#cPassword").val());
// $("#cPassword").focus();
// return false;
// }
// if($("#phNumber").val() == ""){
// $("#phNumber").focus();
// return false;
// }


    });
    $("#userLoginLink").on('click', function () {
        $("#loginScreen").modal({backdrop: "static"});
        $("#registerScreen").modal("hide");
    });
    $("#userRegisterLink").on('click', function () {
        $("#registerScreen").modal({backdrop: "static"});
        $("#loginScreen").modal("hide");
    });
    $("#registerForm #username").blur(function () {
        var username = $("#registerForm #username").val();
        if (username !== "" && username.length > 3) {
            $.ajax({
                url: "isAvailable",
                type: "POST",
                contentType: "application/json",
                data: username,
                success: function (response) {
                    if (!response) {
                        alert("Username Already available. Please choose different username.");
                        $("#registerForm #username").val("");
                    }
                }
            });
        }
    });
    
//	
// if($("#email").val() != ""){
//		 
// if
// (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(registerForm.email.value))
// {
// $(this).closest("form#registerForm").submit();
// return true;
// }
// else{
// alert("You have entered an invalid email address!");
// $("#email").focus();
// return false;
// }
//	 
// }
});