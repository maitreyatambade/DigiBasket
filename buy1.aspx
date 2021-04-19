<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="buy1.aspx.cs" Inherits="buy1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style25">
        <tr>
            <td style="text-align: center">
                <table class="style25">
                    <tr>
                        <td style="width: 421px; height: 18px">
                            <b>User Name:</b></td>
                        <td style="text-align: left; height: 18px">
                            <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 421px">
                            <strong>Product Name:</strong></td>
                        <td style="text-align: left">
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="ProdName" 
                                DataValueField="ProdId" Height="16px" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="162px" 
                                AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [ProductMst1] WHERE ([CatId] = @CatId)">
                                <SelectParameters>
                                    <asp:FormParameter DefaultValue="Fruits" FormField="Fruits" Name="CatId" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 421px">
                            <b>Rate:</b></td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" ReadOnly="True" 
                                style="text-align: left; font-weight: bold"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 421px">
                            <b>Quantity:</b></td>
                        <td style="text-align: center">
                            <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
                                style="font-weight: bold" AutoPostBack="True"></asp:TextBox>
                            <b>Available:</b><asp:TextBox ID="TextBox3" runat="server" 
                                style="font-weight: bold" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 421px">
                            <b>Total Amount:</b></td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True" ReadOnly="True" 
                                style="font-weight: bold"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 421px">
                            <b>Shipping Address:</b></td>
                        <td style="text-align: left; font-weight: 700; color: #FF0000">
                            <asp:TextBox ID="TextBox5" runat="server" Height="75px" 
                                style="font-weight: bold" TextMode="MultiLine" Width="236px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 421px">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                style="font-weight: bold" Text="Confirm Order" />
                        </td>
                        <td>
                            <b></b>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

