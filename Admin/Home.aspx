<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="Admin.css" rel="stylesheet" type="text/css" />
    <title>Attendance Management System></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css" />
    

    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <style type="text/css">
         .container-fluid {
            padding: 0;
        }

        .navbar-header {
            width: 500px;
        }

        .navbar-default {
            background: none !important;
            border: none !important;
        }

        #navbar {
            background: #FFFFFF;
            padding-top: 1.5%;
            padding-bottom: 1.5%;
            border-bottom: 1px solid #999;
        }

        .navbar {
            margin-bottom: 0 !important;
        }

       .navbar a {
           font-size:16px;
           font-family: 'Raleway', sans-serif;
           font-weight: 600;
           color: chocolate !important;
       }

        .navbar i, footer i {
            color: #ED1941 !important;
        }

       .nav li a {
           text-transform: uppercase;
           font-weight:600;
       }

       .slider-section {
           padding: 0 !important;
       }

       #slider, .carousel-inner, #slider .carousel-inner img {
           height: 610px;
       }

       .carousel-inner img {
           width: 100%;
       }

       .login-block-1 {
           background: #000000;  /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #434343, #000000);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #434343, #000000); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
padding: 5%;
       }

       .login-block-2 {
           background: #e52d27;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #b31217, #e52d27);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #b31217, #e52d27); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
padding: 5%;
       }

       .login-block-1 h5, .login-block-2 h5, .login-block-1 i, .login-block-2 i {
           color: #FFFFFF;
           text-transform: uppercase;
       }

        .form-control {
            width: 75%;
            background: transparent;
            border: none;
            border-bottom: 1px solid #a0a0a0;
            border-radius: 0;
        
       }

        label {
            color: #FFFFFF !important;
            text-align: left !important;
            padding-left:15%;
            font-size:13px;
        }

        .row {
            margin-left: 0 !important;
            margin-right: 0 !important;
        }

        .navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:focus, .navbar-default .navbar-nav>.active>a:hover {
            color: #FFFFFF;
            background-color: chocolate;
        }

        ul li a input[type=submit] {
            background: transparent;
            border: none;
            text-transform: uppercase;
        }

        .footer-logo, td{
           font-size:16px;
           font-family: 'Raleway', sans-serif;
           font-weight: 600;
           color: chocolate !important;
       }

        .list-inline .text-muted {
            font-weight: 500;
            border-right: 1px solid #999999;
            padding-right: 10px;
        }

        .list-inline li:last-child .text-muted {
            border-right: 0 !important;
        }

        footer .container .row {
            border-bottom: 1px solid #999999;
        }

        #studentlogin, #stafflogin {
            display:none;
        }

        #report {
            padding: 5%;
        }
    </style>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
        <div class="container-fluid">
            <div class="navbar navbar-default">
                  
                      <center>
                    <a class="text-center" href="#"><i class="fa fa-graduation-cap fa-3x" aria-hidden="true"></i> <br />Attendance Management System </a>
                 </center>
                         
                </div>
            
    <div id="alogin">
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="atitle">
                    Admin Login Panel</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:TextBox ID="txtuname" runat="server" placeholder="Enter UserName" 
                        CssClass="ltxt"></asp:TextBox><br /><br />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:TextBox ID="txtupass" runat="server" placeholder="Enter Password" 
                        CssClass="ltxt" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="btnlogin" runat="server" CssClass="lbtn" Text="Login" 
                        onclick="btnlogin_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="small">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Back to Home</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
        </div>
    </form>
</body>
</html>
