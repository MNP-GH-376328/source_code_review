<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SourceCodeTA.aspx.cs" Inherits="SourcecodeReviewone.SourceCodeTA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="SourcecodeTA.js"></script>
    <script src="jquery.min.js"></script>
    <title></title>
</head>
  <style>
        body {
            margin: 0;
            font-family: Candara;
            background-color: #f7f2fc;
        }

        .all {
            display: flex;
        }

        .main {
            width: 200px;
            background-color: #D3C5E5;
            height: 100%;
            padding: 20px;
/*          box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);*/            
            border-radius: 0px;
        }

        #d1 {
            display: flex;
            flex-direction: column;
        }

            #d1 a {
                font-size: 20px;
                font-family: Calibri;
                text-decoration: none;
                color: #333;
                padding: 20px;
                transition: background-color 0.3s;
                border-radius: 10px;
                transition: .7s;
            }

                #d1 a:hover {
                    color: white;
                    background-color: #ddd;
                    transform: scale(1.01);
                    background-color: #735DA5;
                    box-shadow: 3.9px 7.8px 7.8px hsl(0deg 0% 0% / 0.38);
                }

        .opt {
            text-align: center;
            margin-top: 15px;
        }

        .topbar {
            width: 80vw;
            background-color: #D3C5E5;
            height: 100px;
        }

        .icons {
            border-radius: 10px;
            margin: 30px;
            display: flex;
            font-size: 30px;
            float: right;
        }

        .user {
            padding: 5px;
            margin-left: 20px;
            margin-right: 10px;
            transition: background-color 0.3s;
            border-radius: 10px;
            transition: .7s;
        }

        .fa-sign-out {
            padding: 10px;
            margin-left: 10px;
        }

        .user:hover {
            color: white;
            background-color: #ddd;
            transform: scale(1.01);
            background-color: #735DA5;
            box-shadow: 3.9px 7.8px 7.8px hsl(0deg 0% 0% / 0.38);
        }

        .icons i {
            margin-right: 10px;
            transition: background-color 0.3s;
            border-radius: 10px;
            transition: .7s;
        }

            .icons i:hover {
                color: white;
                background-color: #ddd;
                transform: scale(1.01);
                background-color: #735DA5;
                box-shadow: 3.9px 7.8px 7.8px hsl(0deg 0% 0% / 0.38);
            }

        .heading {
            position: absolute;
            font-family: 'Segoe UI';
            font-size: 40px;
            color: white;
            top: 100px;
            left: 520px;
        }

            .heading h2 {
                box-shadow: 3.9px 7.8px 7.8px hsl(0deg 0% 0% / 0.38);
            }

        .ta-card {
            height: 450px;
            margin: 50px;
            margin-top: 30px;
            background-color: #735DA5;
            border-radius:15px;
            width: 900px;
            box-shadow: 3.9px 7.8px 7.8px hsl(0deg 0% 0% / 0.38);
        }

        .rows {
            margin-top: 25px;
            margin-left: 30px;
        }

        .ta-content {
            width: 900px;
            position: absolute;
            margin-top: 55px;
            margin-left: 20px;
            /*            background-color: #13950b;*/
            height: 300px;
        }

        .ta-card span {
            margin: 10px;
            color: white;
        }

        .crf-dropdown {
            padding: 10px;
            display: flex;
            width: 100%;
            /*            background-color: #735DA5;*/
        }

        .DropDownList1 {
            width:640px;
            padding: 10px;
            border-radius: 20px;
            border: none;
            box-shadow: 3.9px 7.8px 7.8px hsl(0deg 0% 0% / 0.38);
        }

        .name-and-date {
            display: flex;
        }

            .name-and-date span {
                margin-left: 17px;
            }

        .DropDownList2 {
            width: 250px;
            padding: 10px;
            border-radius: 20px;
            border: none;
            box-shadow: 3.9px 7.8px 7.8px hsl(0deg 0% 0% / 0.38);
        }

        .date {
            width: 250px;
            padding: 10px;
            border-radius: 20px;
            border: none;
            outline:none;
            box-shadow: 3.9px 7.8px 7.8px hsl(0deg 0% 0% / 0.38);
        }

        .remark {
            display: flex;
            flex-direction: row;
            align-items:center;
            margin-left: 45px;

        }
        .remark-label{
            margin-left:20px;
            margin-top:0px;
        }

        .remark-txt {
            margin-left: 5px;
            padding: 10px;
            border-radius: 20px;
            border: none;
            outline: none;
            box-shadow: 3.9px 7.8px 7.8px hsl(0deg 0% 0% / 0.38);
        }

        .buttons {
            display: flex;
            /*           margin-left:180px;*/
            justify-content: center;
            /*background-color: #38950b;*/
            width: 850px
        }
        .button{
            background-color: white;
            padding-top:10px;
            align-items:center;
            padding:15px 250px;
            border-radius: 25px;
            font-size:17px;
            font-family:Candara;
            font-weight:bolder;
            border:none;
            outline:none;
            border:none;
            
            transition: .7s;
        }
            .button:hover {
                background-color: white;
                color: rgba(64, 255, 62, 0.5);
            }
            .footer {
            font-family: Candara;
            margin: 0px 0px;
            margin-bottom:-50px;
            background-color: #D3C5E5;
            height: 50px;
        }
            

        .f-txt {
            color:black;
            /*border-left: 1px solid black;
            border-right: 1px solid black;*/
            position: absolute;
            margin: 12px 280px;
            font-size: 17px;
            width: 700px;
            text-align: center;
        }
    </style>

<body>
    <div class="all">
        <div class="main">
            <div id="d1">
                <img src="images\mana.png" />
                <a href="dashboard.aspx" class="dash opt">DASHBOARD</a>
                <br />
              <a href="SourceCodeTA.aspx" class="ta opt">SCR TA</a>
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
                        <asp:Label ID="username" runat="server" Text="Label">NIDHEESH P P</asp:Label>
                    </div>
                    <i class="fa fa-sign-out" aria-hidden="true" onclick="goback()"></i>
                </div>

            </div>
            <div class="content">
                <h2 class="heading">Source Code Review TA</h2>
                <div class="ta-card">
                    <form runat="server">
                        <div class="ta-content">
                            <div class="rows crf-dropdown">
                                <span>SELECT CRF</span>

                                <%--<asp:DropDownList CssClass="crf-drop" ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">                                
<%--                                    <asp:ListItem id="crf1">16107~125543~CRF FOR AUTOFILL DRIVING LICENCEPASSPORT DETAILS WITH EDITABLE OPTΙΟΝ.</asp:ListItem>
                                    <asp:ListItem id="crf2">16017~125419-Request to exclude error report ledgers from accounts entry module in Accnew</asp:ListItem>
                                    <asp:ListItem id="crf3">16052~125467~Modification in Purchase Module Outsourcing Contract Management</asp:ListItem>
                                    <asp:ListItem id="crf4">15950~125376~Modification of purchase module</asp:ListItem>
                                    <asp:ListItem id="crf5">16039~125447~CRF FOR INTEGRATION OF CHANGE IN CUSTOMER ONBOARDING</asp:ListItem>--%>
                          <%--      </asp:DropDownList>--%>
                              
                                    <select class="form-control DropDownList1" id="DrpCrf" name="blid" >
                                                        

                                                </select>

                            </div>
                            <div class="rows name-and-date">
                                <div class="name">
                                    <span class="ename">ASSIGN TO</span>
                                   <%-- <asp:DropDownList CssClass="name-drop" ID="DropDownList2" runat="server">                                
                                    <asp:ListItem id="ma">Maheesh M</asp:ListItem>
                                    <asp:ListItem id="ro">Rohith P K</asp:ListItem>
                                    <asp:ListItem id="sr">Sreethu Krishnan M S</asp:ListItem>
                                    <asp:ListItem id="ph">Philip M Shajan</asp:ListItem>
                                    <asp:ListItem id="ar">Aravind K S</asp:ListItem>
                                </asp:DropDownList>      --%>        
                                         <select class="form-control DropDownList2" id="asnto" name="empcode"">
                                          </select>
                                </div>
                                <div class="dates">
                                    <span class="tdate">TARGET DATE</span>
                                    <input class="date" id="tdate" runat="server" type="date"/>
                                </div>
                            </div>
                           <%-- <div class="rows remark">
                                <span class="remark-label">REMARKS</span>
                                <textarea class="remark-txt" id="TextArea1" cols="84" rows="2"></textarea>
                            </div>--%>
                            <div class=" rows buttons">
                                <button id="btn1" class="button" type="button" runat="server" onclick="return Submit();">ASSIGN</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
            <div class="f-txt">

                <marquee scrolldelay="200">&#169; DESIGNED BY SOURCE CODE REVIEW TEAM MANAPPURAM FINANCE LIMITED</marquee>

            </div>
        </div>

    <input id="val1" type="hidden" runat="server"/>
    <input id="val2" type="hidden" runat="server"/>
    <input id="val3" type="hidden" runat="server"/>
    

</body>
</html>
