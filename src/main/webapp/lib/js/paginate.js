// @ts-nocheck
$(document).ready(function() {	
    var table = $('#tb-danhsachthuoc').DataTable();
    var info = table.page.info();
    var page_length = info.length;

    // Ajax phân trang
    $("#tb-danhsachthuoc").on('page.dt', function() {
        var info = table.page.info();
        var page_length = info.length;
        console.log("Current page is: " + (info.page + 1) + " in total page is: " + info.pages);
    });

    // Check box check-all
    $("input.check-all").click(function() {
        var num_checked = $('td.sub-chkbox').find("input:checked").length;
        console.log(num_checked + ", " + page_length);

        console.log(num_checked != page_length);
        if (num_checked != page_length) {
            $("input.check-all").prop("checked", true);
            $("td.sub-chkbox").find("input.check-some").prop("checked", true);
        } else if (num_checked == page_length) {
            $("input.check-all").prop("checked", false);
            $("td.sub-chkbox").find("input.check-some").prop("checked", false);
        }
    });
    // Check box check-some
    $("input.check-some").click(function() {
        var num_checksome = $('td.sub-chkbox').find("input:checked").length;
        console.log("Check some: " + num_checksome + ", page_length: " + page_length);
        if (num_checksome != page_length && num_checksome != 0) {
            $("input.check-all").prop("indeterminate", true);
        } else if (num_checksome == page_length) {
            $("input.check-all").prop("indeterminate", false);
            // @ts-ignore
            $("input.check-all").prop("checked", true);
        } else if (num_checksome == 0) {
            console.log(num_checksome == 0);
            $("input.check-all").prop("indeterminate", false);
            $("input.check-all").prop("checked", false);
        }
    });
});