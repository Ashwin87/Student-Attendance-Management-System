<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Admin_Message" %>

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
        .style1
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Leave Report</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td>
    <table width="100%">
        <tr>
            <td>
                Select Standard :
                        <asp:DropDownList ID="drpstd" runat="server" CssClass="txt">
                        </asp:DropDownList>
                    &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnnewleave" runat="server" CssClass="btn" 
                    onclick="btnnewleave_Click" Text="New Leave Report" Width="160px" />
&nbsp;
                <asp:Button ID="btnapprove" runat="server" CssClass="btn" 
                    onclick="btnapprove_Click" Text="Approve Leave" Width="160px" />
&nbsp;
                <asp:Button ID="btnreject" runat="server" CssClass="btn" 
                    onclick="btnreject_Click" Text="Reject Leave" Width="160px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    Total New Leave =
                                    <asp:Label ID="lblnew" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="#333333"  
                                        style="text-align: center" Width="727px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="rollno" HeaderText="RollNo" />
                                            <asp:BoundField DataField="name" HeaderText="Student Name" />
                                            <asp:BoundField DataField="message" HeaderText="Subject" />
                                            <asp:BoundField DataField="nodays" HeaderText="Days" />
                                            <asp:BoundField DataField="Reply" HeaderText="Status" />
                                        </Columns>
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                           <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    Total Apporved Leave =
                                    <asp:Label ID="lblapp" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                       BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="#333333"  style="text-align: center" 
                                        Width="727px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="rollno" HeaderText="RollNo" />
                                            <asp:BoundField DataField="name" HeaderText="Student Name" />
                                            <asp:BoundField DataField="message" HeaderText="Subject" />
                                            <asp:BoundField DataField="nodays" HeaderText="Days" />
                                            <asp:BoundField DataField="Reply" HeaderText="Status" />
                                        
                                        </Columns>
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                           <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    Total Rejected Leave =
                                    <asp:Label ID="lblrej" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                       BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="#333333"  style="text-align: center" 
                                        Width="727px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="rollno" HeaderText="RollNo" />
                                            <asp:BoundField DataField="name" HeaderText="Student Name" />
                                            <asp:BoundField DataField="message" HeaderText="Subject" />
                                            <asp:BoundField DataField="nodays" HeaderText="Days" />
                                            <asp:BoundField DataField="Reply" HeaderText="Status" />
                                         
                                        </Columns>
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                           <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />
                                    </asp:GridView>
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
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
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

