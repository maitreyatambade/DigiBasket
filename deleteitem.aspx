<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="deleteitem.aspx.cs" Inherits="deleteitem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style25">
    <tr>
        <td style="text-align: right; width: 415px">
            <strong>Category:</strong></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Fruits</asp:ListItem>
                <asp:ListItem>Vegetables</asp:ListItem>
                <asp:ListItem>Grocery</asp:ListItem>
                <asp:ListItem>Personal Care</asp:ListItem>
                <asp:ListItem>Breverages</asp:ListItem>
                <asp:ListItem>Milk And Breakfast</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 415px">
            <strong>Product:</strong></td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="19px" Width="136px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 415px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            &nbsp;<asp:Button ID="Button1" runat="server" Text="X Delete" />
        </td>
    </tr>
</table>
</asp:Content>

