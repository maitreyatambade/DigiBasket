<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="NewAdmin.aspx.cs" Inherits="NewAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style25" style="font-weight: 700">
    <tr>
        <td colspan="2" style="text-align: center">
            <strong>New Admin</strong></td>
    </tr>
    <tr>
        <td style="text-align: right; width: 414px">
            <b>User Name:</b></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="231px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 414px">
            Mobile<b>:</b></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="228px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 414px">
            <b>Password:</b></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="228px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 414px">
            <b>Confirm Password:</b></td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="227px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Create" 
                Width="88px" />
        </td>
    </tr>
</table>
</asp:Content>

