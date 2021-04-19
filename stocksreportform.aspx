<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="stocksreportform.aspx.cs" Inherits="stocksreportform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style25" style="font-style: italic">
        <tr>
            <td style="text-align: center; background-color: #FFFF00">
                <br />
                <strong>Category:
                <br />
                </strong>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Category" 
                    DataValueField="Category" Height="23px" Width="199px">
                </asp:DropDownList>
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                    Text="Generate Report" />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

