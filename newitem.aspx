<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="newitem.aspx.cs" Inherits="newitem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style25">
    <tr>
        <td style="text-align: right; width: 414px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; width: 414px">
            <strong>Name:</strong></td>
        <td>
            <asp:TextBox ID="txtnm" runat="server" Width="216px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 414px">
            <strong>Category:</strong></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="CatName" DataValueField="CatID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                onselecting="SqlDataSource2_Selecting" SelectCommand="SELECT * FROM [CatMat]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 414px">
            <strong>Image:</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="text-align: right; font-weight: 700; width: 414px">
            Quantity:</td>
        <td>
            <asp:TextBox ID="txtqty" runat="server" Width="212px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 414px">
            <strong>Rate :</strong></td>
        <td>
            <asp:TextBox ID="txtrate" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 414px">
            <strong>
            <br />
            <br />
            <br />
            <br />
            <br />
            </strong></td>
        <td>
            <br />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" 
                style="font-weight: 700; font-style: italic" />
            <br />
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [ProductMst]"></asp:SqlDataSource>
            <br />
            <br />
        </td>
    </tr>
</table>
</asp:Content>

