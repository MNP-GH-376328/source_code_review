<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginmain.aspx.cs" Inherits="SourcecodeReviewone.Loginmain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<script src="login_main.js"></script>
<script src="jquery.min.js"></script>
<head runat="server">
  <style>
        * {
            margin: 0;
        }

        body {
            font-family: Candara;
            color: white;

            background-color: #f8edff;
            
        }


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
        .all{
            display:flex;
            /*background-color:rgba(207, 233, 17, 0.34)*/

        }
        .login-img{
            position:absolute;
            width:460px;
            margin-left:60px;
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

        .manappuramimg {
            width: 250px;
            height: 80px;
            padding-left: 540px;
            padding-top: 10px;
        }

        .loginform {
            width: 480px;
            height: 300px;
            background-color: #735DA5;
            border-radius: 15px;
            margin-left: 600px;
            margin-top: 70px;
        }

        .form_content {
            position:absolute;
            margin-top: 20px;
        }

        .loginform h1 {
            margin-left:40px;
            text-align: center;
        }

        .content {
            margin-top: -30px;
            margin-left: 40px;
        }

        .d {
            width: 350px;
            padding: 5px;
            margin: 25px;
            display: flex;
            box-shadow: 3.9px 7.8px 20px 10px hsl(0deg 0% 0% / 0.38);
            border-radius: 20px;
        }

        .label {
            padding: 10px;
        }

        .tbox {
            font-size: 14px;
            color: white;
            outline: none;
            background: none;
            border: none;
            border-bottom: 1px solid white;
        }

        #pass {
            margin-left: 30px;
            padding: 10px;
            background-color: none;
        }

        #usrid {
            margin-left: 45px;
            padding: 10px;
        }

        .btn {
            font-weight:bold;
            margin-left: 120px;
            outline: none;
            border: none;
            width: 170px;
            height: 35px;
            border-radius: 20px;
        }
        .btn:hover{
            background-color:white;
        }

        .footer {
            font-family: Candara;
            margin: 90px 0px 0px 0px;
            margin-bottom: -50px;
            background-color: #D3C5E5;
            height: 50px;
        }

        .f-txt {
            color: black;
            /* border-left: 1px solid black;
            border-right: 1px solid black;*/
            position: absolute;
            margin: 12px 280px;
            font-size: 17px;
            width: 700px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">

        <div class="top">
            <img class="manaimg" src="images\mana.png" />
            <h2 class="manappuram-text">MANAPPURAM APPLICATION PORTAL</h2>

        </div>
        <div class="all">
            <img class="login-img" src="images/Mobile%20login-amico.png" />
            <div class="loginform">
              
                <div class="form_content">
                    <h1 class="heading">Portal Login</h1>
                    <br />
                    <div class="content">
                        <div class="d user-id">
                            <asp:Label class="label" ID="Label1" runat="server" Text="Label">User ID</asp:Label><br />
                            <asp:TextBox class="tbox" ID="usrid" runat="server" required="required"></asp:TextBox><br />
                        </div>
                        <div class="d pass">
                            <asp:Label class="label" ID="Label2" runat="server" Text="Label">Password</asp:Label><br />
                            <asp:TextBox class="tbox" ID="pass" runat="server" Type="password" required="required"></asp:TextBox><br />
                        </div>
                        <input type="button" class="btn" id="Button1" value="LOGIN" runat="server" text="Login" onclick="Button1_Click()" />
                    </div>
                </div>


            </div>
        </div>

    </form>
    <div class="footer">
        <div class="f-txt">

            <marquee scrolldelay="200">&#169; DESIGNED BY SOURCE CODE REVIEW TEAM MANAPPURAM FINANCE LIMITED</marquee>

        </div>
    </div>
</body>
</html>
