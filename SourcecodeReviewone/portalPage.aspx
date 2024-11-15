<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portalPage.aspx.cs" Inherits="SourceCodeReview.portalPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mana Win Portal</title>
    <style>
        .top {
            width: 100%;
            height: 100px;
            background-color: #735DA5;
            display: flex;
            font-family: Candara;
        }

        .manappuram-text {
            font-size: 30px;
            margin: 10px;
            margin-left: 150px;
        }

        .manaimg {
            margin: 10px;
            padding: 10px;
        }

        .manappuram-text {
            padding: 15px;
            color: white;
            padding-left: 7px;
        }
        .manappuram-text2{
            padding-top:7px;
            padding-left:420px;
        }
        .manappuramimg{
            width:250px;
            height:80px;
            padding-left:540px;
            padding-top:10px;
        }
        .portaltext{
            color:#735DA5;
            
        }
        .portaltext:hover {
            cursor: pointer;
        }
        .tblrow{
            padding-left:100px;
        }
        
        
    </style>
     
</head>
<body>
    <form id="form1" runat="server">
         <div class="top">
            <img class="manaimg" src="images\mana.png" />
            <h2 class="manappuram-text">MANAPPURAM APPLICATION PORTAL</h2>

        </div>
        <div>
            <h3 class="manappuram-text2">Manappuram Finance Limited :- A.O.VALAPAD</h3>
            <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label><br />
            <h5>Please use the URLs (Link) below to open the application of your choice. Should you have any problem in the application, please contact IT Help Desk - 0487 2437006.</h5>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell style="padding-right:20px;"><b class="portaltext">AML</b><br /><span>This is the AML Web Application</span></asp:TableCell>         
                    <asp:TableCell style="padding-right:20px;"><b class="portaltext">Accnew</b><br /><span>This is the Accnew Application</span></asp:TableCell>
                    <asp:TableCell style="padding-right:20px;"><b class="portaltext">Auction Punching</b><br /><span>This is the Auction Punching Application</span></asp:TableCell>
                    <asp:TableCell style="padding-right:20px;"><b class="portaltext">Audit Module</b><br /><span>This is the Audit Module</span></asp:TableCell>
                   
                    <asp:TableCell><b class="portaltext">HO Apps</b><br /><span>This is the Dot Net Web Application</span></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">Closing</b><br /><span>This is the Closing Module</span></asp:TableCell>         
                    <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">Dot net(Mebs)</b><br /><span>This is HTTPS Mebs Application</span></asp:TableCell>
                    <asp:TableCell style="padding-right:25px;padding-top:25px;"><a href="dashboard.aspx" style="text-decoration:none;"><b class="portaltext">Source Code Review</b><br /></a><span>Source Code Review Module</span></asp:TableCell>

                    <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">IT Projects</b><br /><span>New Application Management System</span></asp:TableCell>
                    <asp:TableCell style="padding-top:25px;"><b class="portaltext">ITSM Tool</b><br /><span>IT Service Ticketing Tool</span></asp:TableCell>                   
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">ITC Portal</b><br /><span>This is the ITC Portal</span></asp:TableCell>         
                    <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">IT Alert Reports</b><br /><span>This is the IT Alert Reports</span></asp:TableCell>
                    <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext"> Legal Notice Updation</b><br /><span>Legal Notice Updation Application</span></asp:TableCell>
                    <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">MADU</b><br /><span>Learning Expirence Platform</span></asp:TableCell>                 
                    <asp:TableCell style="padding-top:25px;padding-top:25px;"><b class="portaltext">TMS</b><br /><span>Treasury Management System</span></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                     <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">Bond Series</b><br /><span>This is the Bond Series Module</span></asp:TableCell>
                     <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">HRMS</b><br /><span>HRMS Module</span></asp:TableCell>
                     <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">Purchase</b><br /><span>New Purchase Module</span></asp:TableCell>
                     <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">Stores</b><br /><span>This is the stores Application</span></asp:TableCell>         
                    <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">Paperless</b><br /><span>Paperless File Approval System</span></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">Software Discovery Tool</b><br /><span>This is the software discovery application</span></asp:TableCell>
                     <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">Operational Projects</b><br /><span>This is Operational Projects</span></asp:TableCell>
                     <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">Online Reports</b><br /><span>Online Payment /Online Gold loan</span></asp:TableCell>
                     <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">Stores</b><br /><span>This is the stores Application</span></asp:TableCell>         
                    <asp:TableCell style="padding-right:25px;padding-top:25px;"><b class="portaltext">HR Interview</b><br /><span>This is the HR Interview Module</span></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            
        </div>
    </form>
</body>
</html>
