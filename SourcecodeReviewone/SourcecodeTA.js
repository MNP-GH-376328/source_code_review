window.onload = function () {
   // alert('123');
    load_drop();
};






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



function load_drop() {
    //alert('hii');
    debugger;

    $.ajax({
        type: "post",
        contentType: "application/json; charset=utf-8",
        url: "SourceCodeTA.aspx/GetCrfList",
        data: "{typ:'" + 'Load_crf' + "'}",
        dataType: "json",
        success: function (Result) {
            Result = Result.d;
            $('#DrpCrf').append($("<option></option>").val("-1").html("---SELECT---"));
            $.each(Result, function (key, value) {
                $('#DrpCrf').append($("<option></option>").val(value.did).html(value.dname));
            });

        }
    });

    $.ajax({
        type: "post",
        contentType: "application/json; charset=utf-8",
        url: "SourceCodeTA.aspx/GetCrfList",
        data: "{typ:'" + 'Load_AssinTo' + "'}",
        dataType: "json",
        success: function (Result) {
            Result = Result.d;
            $('#asnto').append($("<option></option>").val("-1").html("---SELECT---"));
            $.each(Result, function (key, value) {
                $('#asnto').append($("<option></option>").val(value.did).html(value.dname));
            });

        }
    });
}



function Submit() {
    var empcode = $("#asnto").val();
    var crfid = $("#DrpCrf").val();
    let targetdate = $("#tdate").val();
    let data = empcode + '^' + targetdate;
      $.ajax({
        type: "post",
        contentType: "application/json; charset=utf-8",
          url: "SourceCodeTA.aspx/Confirm",
          data: "{typ:'Submit',val:'" + crfid + "',val1:'" + data + "'}",
        dataType: "json",
        success: function (Result) {
            Result = Result.d;
            if (Result == "000") {
                alert("Submited Successfully");
                location.reload(1);
            }
            else {
                alert("Something Went Wrong");
            }
           
        }
    });

}