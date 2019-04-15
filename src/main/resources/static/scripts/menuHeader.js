$(document).ready(function() {
    $("#userLogin").on('click',function() {
        $("#loginScreen").modal("show");
    });
    
    $("#userLoginLink").on('click',function() {
        $("#loginScreen").modal("show");
    });
    
    $(".modal-dialog").draggable();
    
    $("#userRegister").on('click',function() {
        $("#registerScreen").modal("show");
    });
    
    $("#userRegisterLink").on('click',function() {
        $("#registerScreen").modal("show");
    });
    
    $(".dropdown").on('blur',function() {
    });
});