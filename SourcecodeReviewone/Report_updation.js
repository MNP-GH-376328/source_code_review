window.onload = function () {
    ++
    alert('gi');
};

var Counter = 0;
function addval() {


    debugger;

    var table = document.getElementById("mytab");
    var d1 = $("#DropDownList1").val();
    var d2 = $("#DropDownList2").val();
    var Text1 = $("#Text1").val();
    var Text2 = $("#Text2").val();
    var Text3 = $("#Text3").val();
    //if (($("#Text1").val() == "") && ($("#Text2").val() == "") && ($("#Text3").val() == "")) {
    //    alert("Please Specify ATR TYPE");
    //    return false;
    //}
    if (d1 == "" || d2 == "" || Text1 == "" || Text2 == "") {
        alert("Please fill all the fields..!")
    } else {
        $("#mytab").show();

        var rowLength = table != null ? table.rows.length : 0;
        if (rowLength < 1) {
            $("#DropDownList1").prop("disabled", true);
            $("#mytab").empty();
            $("#mytab").append('<tbody><thead><tr style="background:gray;color:white"><th class="align-center">CRF ID</th><th class="align-center">Observation</th><th class="align-center">Total Count</th><th class="align-center">Resolved</th><th class="align-center">Closed with Exception</th><th class="align-center">Delete</th></thead><tbody>'
            );

        }
        var id = Counter + 1;

        $("#mytab").append('<tr id="' + id + '"><td class="align-center">' + d1 + '</td><td class="align-center">' + d2 + '</td><td class="align-center">' + Text1 + '</td><td class="align-center">' + Text2 + '</td><td class="align-center">' + Text3 + '</td><td class="align-center"><input type="button" value ="Remove" style="background-color:none;" onclick="row_dlte(' + id + ')"/></td></tr>');
        $("#DropDownList2").val("");
        $("#Text1").val("");
        $("#Text2").val("");
        //$("#Text3").val("");

    }


}

function row_dlte(x) {
    alert("Row deleted!");
    document.getElementById(x).remove();

}


function sub_btn() {
    Swal.fire("Success fully uploaded");
}
    // button = "<input type="submit' value=\"Remove\" style=\"background-color:none;\"/>";


