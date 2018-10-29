<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link rel="stylesheet" type="text/css" href="engine1/style.css" media="screen" />
	<style type="text/css">a#vlb{display:none}</style>
	
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css" />
    <link href="Style.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <style type="text/css">
        .style1
        {
            width: 100px;
        }
        .style2
        {
            width: 4px;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 75px;
        }
        .style5
        {
            font-family: "Arial Rounded MT Bold";
            font-size: x-small;
            color: #006666;
        }

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

       .navbar-brand {
           font-size:16px;
           font-family: 'Raleway', sans-serif;
           font-weight: 600;
           margin-left: 7%;
           color: chocolate !important;
       }

        .navbar-brand i, footer i {
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
    border-bottom: 1px solid #a94442;
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

        .footer-logo {
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

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="navbar navbar-default">
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar5">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand text-center" href="#"><i class="fa fa-graduation-cap fa-3x" aria-hidden="true"></i> <br />Attendance Management System </a>
                  </div>
                  <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                      <li class="active"><a> <asp:Button ID="Button1" runat="server" CssClass="btnmenu" Text="Home" 
                        PostBackUrl="~/Home.aspx" /></a></li>
                      <li><a><asp:Button ID="Button2" runat="server" CssClass="btnmenu" Text="Standard" 
                        PostBackUrl="~/Branch.aspx" /></a></li>
                      <li><a><asp:Button ID="Button3" runat="server" CssClass="btnmenu" Text="Staff" 
                        PostBackUrl="~/Staff.aspx" /></a></li>
                      <li><a><asp:Button ID="Button4" runat="server" CssClass="btnmenu" Text="Feedback" 
                        PostBackUrl="~/Feedback.aspx" /></a></li>
                      <li><a><asp:Button ID="Button5" runat="server" CssClass="btnmenu" Text="Admin Panel" 
                        PostBackUrl="~/Admin/Home.aspx" /></a></li>
                       <li><a href="#login">Login</a></li>
                      <li><a><asp:Button ID="Button6" runat="server" CssClass="btnmenu" Text="Contact Us" 
                        PostBackUrl="~/ContactUs.aspx" /></a></li>
                    </ul>
                  </div>
              </div>
            <section>
            <div class="col-md-12 slider-section">
                <div id="slider" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#slider" data-slide-to="0" class="active"></li>
                    <li data-target="#slider" data-slide-to="1"></li>
                    <li data-target="#slider" data-slide-to="2"></li>
                    <li data-target="#slider" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="images/slider-1.jpg" alt="">
                    </div>

                    <div class="item">
                        <img src="images/slider-2.jpg" alt="">
                    </div>

                    <div class="item">
                        <img src="images/slider-3.jpg" alt="">
                    </div>

                    <div class="item">
                        <img src="images/slider-4.jpg" alt="">
                    </div>
                                       
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="sr-only">Next</span>
                </a>
                </div>
            </div>
        </section>
        <section id="login">
            <div class="row login-section">
                <div class="col-md-6 login-block-1" id="studentlogin">
                    <center><i class="fa fa-user-circle-o fa-4x" aria-hidden="true"></i><br /><br /></center>
                    <h5 class="text-center">STUDENT LOGIN</h5><br /><br />
                    
                        <div class="form-group">
                            <label class="text-left">Username</label>
                           <center> <asp:TextBox ID="txtstuuname" runat="server" CssClass="form-control"></asp:TextBox></center>
                        </div><br />
                        <div class="form-group">
                            <label class="text-left">Password</label>
                            <center><asp:TextBox ID="txtstupass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox></center>
                        </div><br /><br />
                        <div class="form-group">
                            <center><asp:Button ID="btnstudenlogin" runat="server" CssClass="btn btn-default" Text="Login" onclick="btnstudenlogin_Click" /></center>
                        </div>
                  
                    <p class="text-right">
                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#339966" Visible="False">Forgot Password</asp:LinkButton>
                    </p>
                    <p class="text-center">
                        <asp:Label ID="lblstuerror" runat="server"></asp:Label>
                    </p>
                </div>

                <div class="col-md-6 login-block-2" id="stafflogin">
                    <center><i class="fa fa-users fa-4x" aria-hidden="true"></i><br /><br /></center>
                    <h5 class="text-center">STAFF LOGIN</h5><br /><br />
                    
                        <div class="form-group">
                            <label class="text-left">Username</label>
                            <center><asp:TextBox ID="txtstaffuname" runat="server" CssClass="form-control"></asp:TextBox></center>
                        </div><br />
                        <div class="form-group">
                            <label class="text-left">Password</label>
                            <center><asp:TextBox ID="txtstaffpass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox></center>
                        </div><br /><br />
                        <div class="form-group">
                            <center><asp:Button ID="btnstafflogin" runat="server" CssClass="btn btn-default" Text="Login" onclick="btnstafflogin_Click" /></center>
                        </div>
                    
                     <p class="text-right">
                         <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#339966" Visible="False">Forgot Password</asp:LinkButton>
                     </p>
                    <p class="text-center">
                        <asp:Label ID="lblstafferror" runat="server"></asp:Label>
                    </p>
                </div>
            </div><br /><br />
            </section>
            <footer class="text-center">
            <!-- Footer Text -->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="text-center">
                            <a class="footer-logo"><i class="fa fa-graduation-cap fa-3x" aria-hidden="true"></i> <br />Attendance Management System </a>
                        </div> 
                    </div>
                 </div> <br/>
                        <ul class="mb-0 list-inline text-center mt-4">
                            <li><a href="#" class="text-muted">Privacy Policy</a></li>
                            <li><a href="#" class="text-muted">Terms & Conditions</a></li>
                        </ul>

                    
               <br/>

                <div class="col-lg-12 footer-1 text-center">
                    <div class="text-center">
                        <p>2018 &copy; ATTENDANCE MANAGEMENT SYSTEM</p>
                    </div>
                    
                </div>
            </div>
            <!-- End Footer Text -->
        </footer>

            </div>
    </form>
</body>
</html>
