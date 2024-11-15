window.onload = function () {
    alert("works")
    Review_onload();

};


function Review_onload() {
    alert("Review_onload");
    debugger;
    var employeecd = "";
    $.ajax({
        type: "post",
        contentType: "application/json; charset=utf-8",
        url: "Reviewpage.aspx/GetCrfList1",
        data: "{typ:'Load_crf_reviewer', val: '" + employeecd + "'}",
        dataType: "json",
        success: function (Result) {
            Result = Result.d;
            $('#DrpCrf').append($("<option></option>").val("-1").html("---SELECT---"));
            $.each(Result, function (key, value) {
                $('#DrpCrf').append($("<option></option>").val(value.did).html(value.dname));
            });

        }
    });
}

function alertButton() {

    const fileInput = document.getElementById("FileUpload1");

    if (fileInput.value == "") {


        Swal.fire({
            icon: "error",
            title: "file not attached",
            text: "Kindly attache file below 2 mb",

        });

    } else {

        const file = fileInput.files[0];
        const maxSize = 2 * 1024 * 1024; // Set max size to 2MB
        let fsize = file.size;

        if (fileInput.files.length > 0) {


            if (fsize > maxSize) { // 2 MB limit

                Swal.fire({
                    icon: "error",
                    title: "File size too large. Maximum allowed size is 2 MB",
                });

                this.value = ""; // Clear the input
                return;
            }

            else {


                debugger;
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",
                    url: "Reviewpage.aspx/Review_Confirm",
                    data: "{typ:'',val:'',}",
                    dataType: "json",
                    success: function (Result) {
                        Result = Result.d;
                        Swal.fire({
                            title: "Successfully completed source code review",
                            text: ("File uploaded successfully: " + fileInput.files[0].name),
                            icon: "success"
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = "Reviewpage.aspx";
                            }
                        });
                    }

                });
            }
        }
    }
}

function Exitbtn() {
    Swal.fire({
        title: "Successfully Returned",
        icon: "success"
    }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = "Reviewpage.aspx";

        }
    });
}

 //$.ajax({
 //       type: "post",
 //       contentType: "application/json; charset=utf-8",
 //       url: "SourceCodeTA.aspx/GetCrfList",
 //       data: "{typ:'" + 'Load_crf' + "'}",
 //       dataType: "json",
 //       success: function (Result) {
 //           Result = Result.d;
 //           $('#DrpCrf').append($("<option></option>").val("-1").html("---SELECT---"));
 //           $.each(Result, function (key, value) {
 //               $('#DrpCrf').append($("<option></option>").val(value.did).html(value.dname));
 //           });

 //       }
 //   });