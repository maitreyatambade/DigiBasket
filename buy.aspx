<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="buy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style25" style="background-color: #0000FF">
        <tr>
            <td class="style23" style="text-align: center">
                <strong><em><span style="background-color: #0099FF">BUY NOW<br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="ProdId" HeaderText="Product ID" />
                        <asp:BoundField DataField="ProdName" HeaderText="Product Name" />
                        <asp:BoundField DataField="ProdImg" HeaderText="Image" />
                        <asp:BoundField DataField="Rate" HeaderText="Rate" />
                    </Columns>
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [ProductMst1]"></asp:SqlDataSource>
                <br />
                </span></em></strong>
            </td>
        </tr>
    </table>
</asp:Content>

