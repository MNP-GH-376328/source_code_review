<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SourcecodeReviewone.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="Dashboard.css" rel="stylesheet" />
<head runat="server">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible"
        content="IE=edge">
    <meta name="viewport"
        content="width=device-width, 
                   initial-scale=1.0">
    <title></title>
    <style>
        body {
            margin: 0;
            font-family: Calibri;
            /*background-color: #f7f2fc;*/
        }

        .all {
            display: flex;
        }

        .main {
            width: 930px;
            background-color: #D3C0E5;
            height: 590px;
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
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

        .dash-main {
            height: 480px;
            background-color: #f5f0ff;
        }

        .box {
            background-color: #ff0000;
        }
    </style>
</head>
<body>

    <div class="all">
        <div class="main">
            <div id="d1">
                <img src="images\mana.png" />
                <a href="" class="dash opt">DASHBOARD</a>
                <br />
                <a href="SourceCodeTA.aspx"class="ta opt">SCR TA</a>
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
            <div class="content">








                <div class="main dash-main">

                    <div class="searchbar2">
                        <input type="text"
                            name=""
                            id=""
                            placeholder="Search">
                        <div class="searchbtn">
                            <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
                                class="icn srchicn"
                                alt="search-button">
                        </div>
                    </div>

                    <div class="box-container">

                        <div class="box box1">
                            <div class="text">
                                <h2 class="topic-heading">60.5k</h2>
                                <h2 class="topic">TOTAL FINDINGS</h2>
                            </div>

                            <i class="fa-solid fa-bug"></i>
                        </div>

                        <div class="box box2">
                            <div class="text">
                                <h2 class="topic-heading">150</h2>
                                <h2 class="topic">COMPLETED</h2>
                            </div>

                            <i class="fa-duotone fa-solid fa-check"></i>
                        </div>

                        <div class="box box3">
                            <div class="text">
                                <h2 class="topic-heading">320</h2>
                                <h2 class="topic">PENDINGS</h2>
                            </div>

                            <i class="fa-solid fa-hourglass-half"></i>
                        </div>

                        <div class="box box4">
                            <div class="text">
                                <h2 class="topic-heading">70</h2>
                                <h2 class="topic">CLOSING WITH EXCEPTION</h2>
                            </div>

                            <i class="fa-sharp fa-solid fa-eye"></i>
                        </div>
                    </div>

                    <div class="report-container">
                        <div class="report-header">
                            <h1 class="recent-Articles">Recent Articles</h1>
                            <button class="view">View All</button>
                        </div>

                        <div class="report-body">
                            <div class="report-topic-heading">
                                <h3 class="t-op">Article</h3>
                                <h3 class="t-op">Views</h3>
                                <h3 class="t-op">Comments</h3>
                                <h3 class="t-op">Status</h3>
                            </div>

                            <div class="items">
                                <div class="item1">
                                    <h3 class="t-op-nextlvl">Article 73</h3>
                                    <h3 class="t-op-nextlvl">2.9k</h3>
                                    <h3 class="t-op-nextlvl">210</h3>
                                    <h3 class="t-op-nextlvl label-tag">Published</h3>
                                </div>

                                <div class="item1">
                                    <h3 class="t-op-nextlvl">Article 72</h3>
                                    <h3 class="t-op-nextlvl">1.5k</h3>
                                    <h3 class="t-op-nextlvl">360</h3>
                                    <h3 class="t-op-nextlvl label-tag">Published</h3>
                                </div>

                                <div class="item1">
                                    <h3 class="t-op-nextlvl">Article 71</h3>
                                    <h3 class="t-op-nextlvl">1.1k</h3>
                                    <h3 class="t-op-nextlvl">150</h3>
                                    <h3 class="t-op-nextlvl label-tag">Published</h3>
                                </div>

                                <div class="item1">
                                    <h3 class="t-op-nextlvl">Article 70</h3>
                                    <h3 class="t-op-nextlvl">1.2k</h3>
                                    <h3 class="t-op-nextlvl">420</h3>
                                    <h3 class="t-op-nextlvl label-tag">Published</h3>
                                </div>

                                <div class="item1">
                                    <h3 class="t-op-nextlvl">Article 69</h3>
                                    <h3 class="t-op-nextlvl">2.6k</h3>
                                    <h3 class="t-op-nextlvl">190</h3>
                                    <h3 class="t-op-nextlvl label-tag">Published</h3>
                                </div>

                                <div class="item1">
                                    <h3 class="t-op-nextlvl">Article 68</h3>
                                    <h3 class="t-op-nextlvl">1.9k</h3>
                                    <h3 class="t-op-nextlvl">390</h3>
                                    <h3 class="t-op-nextlvl label-tag">Published</h3>
                                </div>

                                <div class="item1">
                                    <h3 class="t-op-nextlvl">Article 67</h3>
                                    <h3 class="t-op-nextlvl">1.2k</h3>
                                    <h3 class="t-op-nextlvl">580</h3>
                                    <h3 class="t-op-nextlvl label-tag">Published</h3>
                                </div>

                                <div class="item1">
                                    <h3 class="t-op-nextlvl">Article 66</h3>
                                    <h3 class="t-op-nextlvl">3.6k</h3>
                                    <h3 class="t-op-nextlvl">160</h3>
                                    <h3 class="t-op-nextlvl label-tag">Published</h3>
                                </div>

                                <div class="item1">
                                    <h3 class="t-op-nextlvl">Article 65</h3>
                                    <h3 class="t-op-nextlvl">1.3k</h3>
                                    <h3 class="t-op-nextlvl">220</h3>
                                    <h3 class="t-op-nextlvl label-tag">Published</h3>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


            </div>
        </div>
    </div>
</body>
</html>
