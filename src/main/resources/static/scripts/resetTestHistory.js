$(document).ready(function() {
    $("#resetTestBtn").on("click",function() {
        var userName=$("#resetTestDiv #resetTest").val().trim();
        if(userName!=='') {
             $.ajax({
                  url: "resetHistory",
                  type: "POST",
                  contentType: "application/json",
                  data: userName,
                  success: function (response) {
                      if(!response) {
                          autoHideWithMessage("scriptSuccessModel",'<strong>Success! </strong> Test has been revoked Successfully!!!');
                          location.reload(true);
                      } else {
                          autoHideWithMessage("scriptAlertModel",'<strong>Alert! </strong> An Unexpected Error Occured!!!');
                      } 
                  }, 
                  error: function (jqXHR, textStatus, errorThrown) {
                      autoHideWithMessage("scriptAlertModel",'<strong>Alert! </strong> An Unexpected Error Occured!!!');                
                  }
             });           
        }
    });
});