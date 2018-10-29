<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="StudentReport.aspx.cs" Inherits="Admin_StudentReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <link href="../css/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css" />
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

       .navbar a, #aheader, a:-webkit-any-link  {
           font-size:16px;
           font-family: 'Raleway', sans-serif;
           font-weight: 600;
           color: chocolate !important;
           text-decoration: none !important;
       }

       body {
    background: #FFFFFF;
    font-family: 'Raleway', sans-serif;
}

        .navbar i, footer i {
            color: #ED1941 !important;
        }

       .nav li a {
           text-transform: uppercase;
           font-weight:600;
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

        .footer-logo{
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

        #aheader i {
            color: #ED1941;
        }
    </style>
    <style type="text/css">




        .style4
    {
        width: 644px;
    }
    .style6
    {
            width: 52px;
        }
    .style5
    {
            width: 56px;
        }
        .style8
    {
        width: 527px;
    }
    .style9
    {
        width: 493px;
    }
    .style10
    {
        width: 133px;
        text-align: center;
    }
    .style11
    {
        width: 332px;
    }
    .style14
    {
        text-align: right;
        color: Red;
        width: 89px;
    }
        .style13
    {
        width: 89px;
    }
    
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            ADVANCE REPORTS</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="left" class="style4">
                <tr>
                    <td class="style15">
                        Select Standard :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="drpstd" runat="server" CssClass="txt" AutoPostBack="True" 
                            onselectedindexchanged="drpstd_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblstd" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        Select Division :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="drpdiv" runat="server" CssClass="txt" AutoPostBack="True" 
                            onselectedindexchanged="drpdiv_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style15">
                        Select Student : 
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="drpstudent" runat="server" CssClass="txt">
                        </asp:DropDownList>
                    </td>
                    </tr><br />
                <tr class="pull-right">
                    <td>
                        <asp:Button ID="btnsarch" runat="server" CssClass="btn" 
                            Text="Select" onclick="btnsarch_Click" />
                    </td>
                    <td valign="bottom">
                        <asp:Label ID="lblcnt" runat="server"></asp:Label>
                    </td>
                </tr>
                    
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style8">
                <tr>
                    <td>
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <table class="tbl">
                                    <tr>
                                        <td class="tblhead">
                                            Student Name :
                                            <asp:Label ID="lblname" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table class="style9">
                                                <tr>
                                                    <td class="style10">
                                                        <asp:Image ID="imgg" runat="server" Height="130px" Width="118px" />
                                                    </td>
                                                    <td colspan="3" valign="top">
                                                        <table class="style11">
                                                            <tr>
                                                                <td class="style14">
                                                                    Roll No :</td>
                                                                <td>
                                                                    <asp:Label ID="lblroll" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style14">
                                                                    Email :
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblemail" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style14">
                                                                    Mobile :
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblmobile" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style14">
                                                                    BirthDate :
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lbldob" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style13">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">
                                                        Address :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lbladd" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">
                                                        City :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblcity" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">
                                                        Pincode :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpin" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">
                                                        UserName :</td>
                                                    <td>
                                                        <asp:Label ID="lbluname" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">
                                                        Password :</td>
                                                    <td>
                                                        <asp:Label ID="lblpass" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

