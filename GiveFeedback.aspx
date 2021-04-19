<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GiveFeedback.aspx.cs" Inherits="GiveFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style25">
    <tr>
        <td style="text-align: center; background-color: #FFFF00">
&nbsp; <strong><em><span style="color: #FFFF00; background-color: #FF0000">
            <br />
            <br />
            Please Give Us Your Valuable Feedback:<br />
            <br />
            <br />
            </span>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </em></strong><br />
            <asp:TextBox ID="TextBox1" runat="server" Height="142px" Width="376px"></asp:TextBox>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                Text="Submit" onclick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

