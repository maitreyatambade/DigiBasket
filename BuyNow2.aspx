<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BuyNow2.aspx.cs" Inherits="BuyNow2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<table style="height: 362px; width: 746px">
<tr>
<td colspan="3" class="style7"><strong><em>order now...</em></strong></td>
</tr>

<tr>
<td class="style6" rowspan="8">
    &nbsp;</td><td class="style8" style="border: thin solid #FFFFFF"></td>
    <td style="border: thin solid #FFFFFF">
    <br />
    </td>
</tr>

<tr>
    <td class="style8" style="border: thin solid #FFFFFF">Enter Product Name:</td>
    <td style="border: thin solid #FFFFFF">
    <asp:DropDownList ID="DropProd" runat="server" Height="18px" 
        style="font-size: medium" Width="119px" AutoPostBack="True" 
        DataSourceID="SqlDataSource2" DataTextField="ProdName" 
        DataValueField="ProdId" onselectedindexchanged="DropProd_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            SelectCommand="SELECT * FROM [ProductMst1] WHERE (([CatId] = @CatId) AND ([CatId] = @CatId2))">
        <SelectParameters>
            <asp:FormParameter DefaultValue="Fruits" FormField="Fruits" Name="CatId" 
                Type="String" />
            <asp:FormParameter DefaultValue="Fruits" FormField="Fruits" Name="CatId2" 
                Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>
    </td>
</tr>

<tr>
    <td class="style8" style="border: thin solid #FFFFFF">Rate:</td>
    <td style="border: thin solid #FFFFFF">
    <asp:TextBox ID="TxtRate" runat="server" ReadOnly="True" AutoPostBack="True" 
        ontextchanged="TxtRate_TextChanged"></asp:TextBox>
    </td>
</tr>

<tr>
    <td class="style8" style="border: thin solid #FFFFFF">Quantity:</td>
    <td style="border: thin solid #FFFFFF">
    <asp:TextBox ID="TxtQty" runat="server" ontextchanged="TxtQty_TextChanged1" 
        AutoPostBack="True"></asp:TextBox>
    &nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" 
        BorderColor="#C02A81"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" style="color: #FFFFFF" Text="Label"></asp:Label>
    </td>
</tr>

<tr>
    <td class="style8" style="border: thin solid #FFFFFF">Discount Per(%):</td>
    <td style="border: thin solid #FFFFFF">
    <asp:TextBox ID="TxtDis" runat="server"></asp:TextBox>
    </td>
</tr>

<tr>
    <td class="style8" style="border: thin solid #FFFFFF">Amount:</td>
    <td style="border: thin solid #FFFFFF">
    <asp:TextBox ID="Txtamt" runat="server" ontextchanged="Txtamt_TextChanged"></asp:TextBox>
    </td>
</tr>

<tr>
    <td class="style8" style="border: thin solid #FFFFFF">Final Amount:</td>
    <td style="border: thin solid #FFFFFF">
    <asp:TextBox ID="TxtFamt" runat="server" ontextchanged="TxtFamt_TextChanged"></asp:TextBox>
    </td>
</tr>

<tr>
    <td class="style8" style="border: thin solid #FFFFFF">Email ID:</td>
    <td style="border: thin solid #FFFFFF">
    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
    </td>
</tr>

<tr>
    <td colspan="2" class="style9"><span class="style10">&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="BtnConfirm" runat="server" Height="30px" Text="Confirm Order" 
            Width="179px" CssClass="style11" onclick="BtnConfirm_Click" 
            ForeColor="Black" />
        <span class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="BtnCancle" runat="server" Height="32px" Text="Cancle" 
            Width="86px" CssClass="style11" ForeColor="Black" />
    </td>
</tr>
</table>

</div>
</asp:Content>

