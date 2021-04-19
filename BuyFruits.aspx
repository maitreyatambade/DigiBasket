<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BuyFruits.aspx.cs" Inherits="BuyFruits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style25">
        <tr>
            <td>
                <table class="style25">
                    <tr>
                        <td style="text-align: right; width: 536px">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; width: 536px">
                            <strong>Product Name:</strong></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="ProdName" 
                                DataValueField="ProdId" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
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
                        <td style="text-align: right; width: 536px">
                            <strong>Rate:</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" 
                                ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; width: 536px">
                            Quantity:</td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                                ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                            <asp:TextBox ID="TextBox5" runat="server" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; width: 536px">
                            Amount:</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; width: 536px">
                            Address:</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="71px" TextMode="MultiLine" 
                                Width="195px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button ID="Button1" runat="server" 
                                Text="Confirm Order" onclick="Button1_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="Reset1" type="reset" value="Reset" /><asp:SqlDataSource 
                                ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [ordernow]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <script language="javascript" type="text/javascript">


        function Reset1_onclick() 
        {

        }


    </script>
</asp:Content>

