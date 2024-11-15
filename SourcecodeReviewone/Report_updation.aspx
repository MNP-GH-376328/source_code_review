<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report_updation.aspx.cs" Inherits="SourcecodeReviewone.Report_updation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <script src="Report_updation.js"></script>
    <link href="Report_updation.css" rel="stylesheet" />
    <script src="AppData/jquery-3.7.1.min.js"></script>
    <script src="jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   

 
   

    <title></title>

</head>
<body >
    <div class="all">
        <div class="main">
            <div id="d1">
               <img src="images\mana.png" />
                <a href="" class="dash opt">DASHBOARD</a>
                <br />
                <a class="ta opt" href="SourceCodeTA.aspx">SCR TA</a>
                <br />
                <a href="Reviewpage.aspx" class="scr opt">SOURCE CODE REVIEW</a>
                <br />
                <a href="Report_updation.aspx" class="report opt">REPORT</a>
                <br />
                <a href="" class="calender opt">FINANCIAL CALENDAR </a>
                <br />
                <a href="" class="c_report opt">FINANCIAL CALENDAR REPORT</a>
                <br />
            </div>

            </div>

        
        <div class="main2">
            <div class="topbar">
                <div class="icons">
                    <div class="user">
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <asp:Label ID="username" runat="server" Text="Label">Sreethu Krishnan M S</asp:Label>
                    </div>
                    <i class="fa fa-sign-out" aria-hidden="true"></i>
                </div>

            </div>



            <div class="form1" style="height:auto;">
                <h3 class="heading">Report Updation</h3>

                <form runat="server" name="form1" onsubmit="return validateForm()" method="post">

                    <label class="lblcrf">CRF ID : </label>
                    <select id="DropDownList1" class="drpcrf" <%--onchange="drpcrf()--%>" name="drpcrf1">
                        <option></option>
                     <%--   <option>--Select Crf--</option>--%>
                        <option>125421</option>
                        <option>125447</option>
                        <option>125524</option>
                    </select>


            <div id="hide1">

                  <%--  <asp:GridView ID="GridView1" runat="server" class="grdfile"></asp:GridView>--%>
                  <label class="lblcrf">Obervations : </label>
                   <select id="DropDownList2" class="drpobs"<%-- onchange="drpobs()"--%>>
                          <option></option>
                            <%--<option>----Select Observations----</option>--%>
                            <option>Unwanted Comments</option>
                            <option>Debugger</option>
                            <option>Unused</option>
                        </select><br />
                <div class="count">
                    <asp:Label ID="Label1" runat="server" Text="Label" class="lblcount">Total Count</asp:Label>
                    <input id="Text1" type="number" class="txtcount" />
                    <asp:Label ID="Label2" runat="server" Text="Label" class="lblcount">Resolved</asp:Label>
                    <input id="Text2" type="number" class="txtcount1" />
                    
                    <input type="button" value="ADD" class="btnadd" onclick="addval()"/><br />
                </div>






                
                    <div class="tbl">
                        <table id="mytab" class="show" <%-- style="display:none"--%>>
                 
                        </table>
                    </div>
                </div>
                    <div class="btndiv">
                    
                        <input type="button" value="SUBMIT" class="btn btnsub " onclick="sub_btn()"  />
                        <a href="Report.aspx"> <input type="button" id="extbtn" value="EXIT" class="btnext " /></a>
                        </div>
               
              
                     
                </form>

            </div>

        </div>

  </div>
    <div class="footer">
        <div class="f-txt">

            <marquee scrolldelay="200">&#169; DESIGNED BY SOURCE CODE REVIEW TEAM MANAPPURAM FINANCE LIMITED</marquee>

        </div>
    </div>
</body>
</html>
