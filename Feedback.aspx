<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         #Button9
        {
            width: 138px;
        }
        .form-control {
          width: 61%;
          background: transparent;
          border: none;
          border-bottom: 1px solid #a94442;
          border-radius: 0;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            FeedBack Form</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" width="70%">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Enter Name</td>
                    <td>
                        <div class="form-group">
                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Contact
                    </td>
                    <td>
                        <div class="form-group">
                        <asp:TextBox ID="txtcont" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Feedback </td>
                    <td>

                        <div class="form-group">
                        <asp:TextBox ID="txtfeed" runat="server" CssClass="form-control" Height="100px" 
                            TextMode="MultiLine"></asp:TextBox>
                            </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td align="center">
                        <asp:Button ID="Button9" runat="server" CssClass="btn" Text="Send Feedback" 
                             onclick="Button9_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lbl" runat="server"></asp:Label>
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

