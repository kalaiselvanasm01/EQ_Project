$(document).ready(function() {
    $("#testHistoryList").dataTable({
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
});