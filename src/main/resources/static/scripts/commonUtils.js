$(document).ready(function() {
    
});
function autoHide(alertId) {
    var id=$("#"+alertId);
    $(id).fadeTo(5000, 500).slideUp(500, function(){
        $(id).slideUp(500);
    });
}
function autoHideWithMessage(alertId,htmlMessage) {
    var id=$("#"+alertId);
    id.html(htmlMessage);
    $(id).fadeTo(5000, 500).slideUp(500, function(){
        $(id).slideUp(500);
    });
}