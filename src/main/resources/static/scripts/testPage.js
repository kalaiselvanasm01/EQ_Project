$(document).ready(function () {
    var cseScore;
    var eceScore;
    var eeeScore;
    var civilScore;
    var mechScore;
    var finalCseScore = 0;
    var finalEceScore = 0;
    var finalEeeScore = 0;
    var finalCivilScore = 0;
    var finalMechScore = 0;
    var attended = new Object();
    $("#questionTable").dataTable({
        searching: false,
        ordering: false,
        scrollX: false,
        scrollY: false,
        paging: true,
        pagingType: "simple",
        pageLength: 1,
        'bSort': false,
        info: true,
        'aoColumns': [
            {sWidth: "100%", bSearchable: false, bSortable: false}
        ],
        "scrollCollapse": false,
        "drawCallback": function () {
            var questionTable=this.api().table();
            $('.paginate_button.next', questionTable.container()).on('click', function (e) {
                var totalPages = $("#totalPages").val();
                var indexNumber = $("#indexNumber").text();
                if (!$(this).hasClass("disabled")) {
                    if (indexNumber <= totalPages) {
                        if (attended[indexNumber] === '' || attended[indexNumber] === undefined || attended[indexNumber] === false) {
                            if (cseScore === 1) {
                                finalCseScore += 1;
                                attended[indexNumber] = true;
                            } else if (civilScore === 1) {
                                finalCivilScore += 1;
                                attended[indexNumber] = true;
                            } else if (eceScore === 1) {
                                finalEceScore += 1;
                                attended[indexNumber] = true;
                            } else if (eeeScore === 1) {
                                finalEeeScore += 1;
                                attended[indexNumber] = true;
                            } else if (mechScore === 1) {
                                finalMechScore += 1;
                                attended[indexNumber] = true;
                            } else {
                                alert("Please Answer this Some Option...");
                            }
                        }
                        if (typeof(Storage) !== "undefined") {
                            localStorage.setItem("totalScore", finalCivilScore + ' ' + finalCseScore + ' ' + finalEceScore + ' ' + finalEeeScore + ' ' + finalMechScore);
                        } else {
                            alert("Sorry, your browser does not support Web Storage...");
                        }
                    }
                    cseScore=0;
                    civilScore=0;
                    eceScore=0;
                    eeeScore=0;
                    mechScore=0;
                    $('input.qtnChoice').bind('change', function () {
                        var choiceVal = $(this).val().trim();
                        if (choiceVal === 'cse' || choiceVal === 'CSE') {
                            cseScore = 1;
                            civilScore = 0;
                            eceScore = 0;
                            eeeScore = 0;
                            mechScore = 0;
                        } else if (choiceVal === 'civil' || choiceVal === 'CIVIL') {
                            cseScore = 0;
                            civilScore = 1;
                            eceScore = 0;
                            eeeScore = 0;
                            mechScore = 0;
                        } else if (choiceVal === 'ece' || choiceVal === 'ECE') {
                            cseScore = 0;
                            civilScore = 0;
                            eceScore = 1;
                            eeeScore = 0;
                            mechScore = 0;
                        } else if (choiceVal === 'eee' || choiceVal === 'EEE') {
                            cseScore = 0;
                            civilScore = 0;
                            eceScore = 0;
                            eeeScore = 1;
                            mechScore = 0;
                        } else if (choiceVal === 'mech' || choiceVal === 'MECH') {
                            cseScore = 0;
                            civilScore = 0;
                            eceScore = 0;
                            eeeScore = 0;
                            mechScore = 1;
                        }
                    });
                } 
            });
        }
    });
    $('input.qtnChoice').bind('change', function () {
        var choiceVal = $(this).val().trim();
        if (choiceVal === 'cse' || choiceVal === 'CSE') {
            cseScore = 1;
            civilScore = 0;
            eceScore = 0;
            eeeScore = 0;
            mechScore = 0;
        } else if (choiceVal === 'civil' || choiceVal === 'CIVIL') {
            cseScore = 0;
            civilScore = 1;
            eceScore = 0;
            eeeScore = 0;
            mechScore = 0;
        } else if (choiceVal === 'ece' || choiceVal === 'ECE') {
            cseScore = 0;
            civilScore = 0;
            eceScore = 1;
            eeeScore = 0;
            mechScore = 0;
        } else if (choiceVal === 'eee' || choiceVal === 'EEE') {
            cseScore = 0;
            civilScore = 0;
            eceScore = 0;
            eeeScore = 1;
            mechScore = 0;
        } else if (choiceVal === 'mech' || choiceVal === 'MECH') {
            cseScore = 0;
            civilScore = 0;
            eceScore = 0;
            eeeScore = 0;
            mechScore = 1;
        }
    });
    $('#questionTable').on('draw.dt', function () {
        var nextBtn = $('#questionTable_next');
        if (nextBtn.hasClass('disabled')) {
            $(nextBtn).removeClass('disabled');
            $(nextBtn).addClass('btn btn-danger');
            $(nextBtn).attr('id', 'submitTest');
            $(nextBtn).text('Submit');
            $('#submitTest').on('click', function () {
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
            });

        }
    });

});