﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddStaff.aspx.cs" Inherits="Admin_AddStaff" %>

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

    .style3
    {
        height: 19px;
    }
    .style2
    {
        width: 394px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                ADD Staff</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style2">
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                        &nbsp;</td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Staff Name :</td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Email :</td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Mobile :</td>
                        <td>
                            <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Qualification : </td>
                        <td>
                            <asp:TextBox ID="txtqual" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Address : </td>
                        <td>
                            <asp:TextBox ID="txtadd" runat="server" CssClass="txt" Height="33px" 
                                TextMode="MultiLine" Width="161px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            City : </td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Picode : </td>
                        <td>
                            <asp:TextBox ID="txtpin" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Gender : </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>MALE</asp:ListItem>
                                <asp:ListItem>FEMALE</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Photo : </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            StdName : </td>
                        <td>
                        <asp:DropDownList ID="drpstd" runat="server" CssClass="txt">
                        </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            UserName :</td>
                        <td>
                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Password : </td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Confi-Pass : </td>
                        <td>
                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD" 
                                onclick="btnadd_Click" />
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                        &nbsp;</td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        &nbsp;</td>
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
</asp:Content>

