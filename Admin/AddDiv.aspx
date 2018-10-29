<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddDiv.aspx.cs" Inherits="Admin_AddDiv" %>

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
        width: 475px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            ADD Division</td>
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
                        Division Name :</td>
                    <td>
                        <asp:TextBox ID="txtdname" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Seat : </td>
                    <td>
                        <asp:TextBox ID="txtseat" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Standard :</td>
                    <td>
                        <asp:DropDownList ID="drpstd" runat="server" CssClass="txt">
                        </asp:DropDownList>
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
                        <asp:Label ID="lbl" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:GridView ID="GvDiv" runat="server" AutoGenerateColumns="False" 
                            AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            DataKeyNames="did" onrowcancelingedit="GvDiv_RowCancelingEdit" 
                            onrowdeleting="GvDiv_RowDeleting" onrowediting="GvDiv_RowEditing" 
                            onrowupdating="GvDiv_RowUpdating">
                            <Columns>
                                <asp:BoundField DataField="divname" HeaderText="Division" />
                                <asp:BoundField DataField="stdname" HeaderText="StdName" />
                                <asp:BoundField DataField="seat" HeaderText="Seat" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </td>
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

