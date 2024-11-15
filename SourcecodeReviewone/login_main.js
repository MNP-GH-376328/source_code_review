window.onload = function () {
    
  
}
function Button1_Click() {
    
   
    debugger;
  
    var employeecd = document.getElementById('usrid').value;
    var password = document.getElementById('pass').value;
    
   
   

    debugger;
    $.ajax({
        type: "post",
        contentType: "application/json; charset=utf-8",
        url: "Loginmain.aspx/Confirm",
        data: "{userid:'" + employeecd + "',pwd:'" + password + "'}", 
        dataType: "json",
        success: function (Result) {
            Result = Result.d;
            if (Result == 'successfull') {
                window.location.href = 'portalPage.aspx';
                alert("Logined");
              
            }
            else {

                alert("Not Loggined!!");

            }


            

        }
    });
}