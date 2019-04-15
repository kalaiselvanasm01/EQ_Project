$(function () {
    var note = $('#note'),
            ts = new Date(2012, 0, 1),
            newYear = true;

    if ((new Date()) > ts) {
        // The new year is here! Count towards something else.
        // Notice the *1000 at the end - time must be in milliseconds
        ts = (new Date()).getTime() + 120 * 1000;
        newYear = false;
    }

    $('#countdown').countdown({
        timestamp: ts,
        callback: function (days, hours, minutes, seconds) {

            var message = "";

            message += days + " day" + (days == 1 ? '' : 's') + ", ";
            message += hours + " hour" + (hours == 1 ? '' : 's') + ", ";
            message += minutes + " minute" + (minutes == 1 ? '' : 's') + " and ";
            message += seconds + " second" + (seconds == 1 ? '' : 's') + " <br />";

            if (newYear) {
                message += "left to complete Your Test";
            } else {
                message += "left to complete Your Test";
            }
            if (days == 0 && hours == 0 && minutes == 05 && seconds == 00) {
                alert("Last 5 Minutes Left!!! Please Try To Complete Soon!!!");
            }
            if (days == 0 && hours == 0 && minutes == 0 && seconds == 1) {
                alert("Time Out!!! Now You will be automatically Redirected to Your Submit Page!!!");
                if (typeof(Storage) !== "undefined") {
                    var totalScore =localStorage.getItem("totalScore");
                    $.ajax({
                        url: "submitTest",
                        type: "POST",
                        contentType: "application/json",
                        data: totalScore,
                        success: function (response) {
                            window.top.location.href="/analyzeScore";
                        }
                    });
                } else {
                    alert("Sorry, your browser does not support Web Storage... Try Using different Browser");
                }
            }
            note.html(message);
        }
    });
});
