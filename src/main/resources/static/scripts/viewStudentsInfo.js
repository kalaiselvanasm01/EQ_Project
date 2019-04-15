$(document).ready(function() {
    $("#studentInfoTable").dataTable({
        searching: false,
        ordering: false,
        scrollX: false,
        scrollY: false,
        paging: true,
        pagingType: "simple",
        pageLength: 15,
        'bSort': false,
        info: true,
        'aoColumns': [
            {sWidth: "100%", bSearchable: false, bSortable: false}
        ],
        "scrollCollapse": false
    });
   $(".removeStudentBtn").on("click",function() {
        var userName=$(this).data("username").trim();
        if(userName!=='') {
             $.ajax({
                  url: "removeStudent",
                  type: "POST",
                  contentType: "application/json",
                  data: userName,
                  success: function (response) {
                      if(!response) {
                          autoHideWithMessage("scriptSuccessModel",'<strong>Success! </strong> Student Details has been deleted Successfully!!!');
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