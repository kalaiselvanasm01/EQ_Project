$(document).ready(function () {
    $("#registerScreen").modal({backdrop:"static"});
    $("#registerBtn").click(function (event) {
        event.preventDefault();
        var password = $("#registerForm #password").val().trim();
        var cPassword = $("#registerForm #cPassword").val().trim();
        if(password!=='' && cPassword!=='') {
            if (password === cPassword) {
                $("#registerForm #originalPassword").val(password);
                $(this).closest("form#registerForm").submit();
            } else {
                alert("Password Mismatch!!!");
            }
        }
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
});