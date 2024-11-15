<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reviewpage.aspx.cs" Inherits="SourcecodeReviewone.Reviewpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<script src="Reviewpage.js"></script>
<link href="Reviewcss.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


<!-- SweetAlert JS -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
<script src="jquery.min.js"></script>
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">

</head>
  
<body>
    <div class="all">
        <div class="main">
            <div id="d1">
                <img src="images\mana.png" />
                <a href="Dashboard.aspx" class="dash opt">DASHBOARD</a>
                <br />
                <a href="SourCecodeTA.aspx" class="ta opt">SCR TA</a>
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
                        <asp:Label ID="username" runat="server" Text="Label">ARAVIND K S</asp:Label>
                    </div>
                    <i class="fa fa-sign-out" aria-hidden="true"></i>
                </div>

            </div>


            <div class="reportdiv">
                <div class="content">
                    <div class="insideform">
                        <form runat="server" class="reviewcolor">
                            <div class="formdiv">
                                <h1>Source Code Review</h1>
                                <div class="crf-dropdown">
                                    <span>CRF ID:</span>
                                  <%--  <asp:DropDownList ID="DropDownList1" class="Dropdown" runat="server"></asp:DropDownList>--%>
                                    
                                    <select class="form-control Dropdown" id="DrpCrf" name="CRF_ID" >
                                                        

                                                </select>
                                </div>
                                <div class="FILEUPLOAD">
                                    <span>FILE UPLOAD</span>
                                <%--    <asp:FileUpload ID="FileUpload1" runat="server"  onclick="fileupload()"/>--%>

                                    <input type="file" id="FileUpload1" runat="server"  onclick="fileupload()"/>


                                </div>
                                <div class="NAL">
                                    <span>REMARK:</span>
                                    <input  type="text" class="INPUTBOX" required="" onclick="Text1" />

                                </div>

                                <div class="BUTTUNDIV">

                                    <div class="submitbtn" runat="server">
                                        <button id="qqq()" type="button" class="bumt" onclick="alertButton()"><i class="fa fa-check" aria-hidden="true"></i>Confirm</button>


                                        <button id="eee()" type="button" class="exit" onclick="Exitbtn()"><i class="fa fa-external-link" aria-hidden="true"></i>Return</button>
                                        <%--  <asp:Button ID="Button3" runat="server" Text="EXIT" CssClass="exit"/>
                                        --%>
                                    </div>
                                </div>
                            </div>
                             </form>
                    </div>
                    
                   
                </div>

            </div>




        </div>
</body>
</html>
