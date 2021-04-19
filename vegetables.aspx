﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vegetables.aspx.cs" Inherits="vegetables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="style25" align="center" bgcolor="Yellow" cellpadding="21px" 
        style="font-weight: 700; font-style: italic">
    <tr>
        <td>
    <table align="center" cellpadding="6" cellspacing="6" class="style25">
        <tr>
            <td align="center" bgcolor="Yellow" style="text-align: center">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="Yellow" BorderColor="#0066FF" CellPadding="4" CellSpacing="3" 
                    DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
                    Height="341px" Width="1100px">
                    <Columns>
                        <asp:BoundField DataField="ProdId" HeaderText="ProdId" InsertVisible="False" 
                            ReadOnly="True" SortExpression="ProdId" />
                        <asp:BoundField DataField="ProdName" HeaderText="ProdName" 
                            SortExpression="ProdName" />
                        <asp:TemplateField HeaderText="ProdImg" SortExpression="ProdImg">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProdImg") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton6" runat="server" Height="219px" 
                                    ImageAlign="Middle" ImageUrl='<%# Eval("ProdImg") %>' Width="219px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Rate" SortExpression="Rate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Rate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <strong><em>Rs.<asp:Label ID="Label1" runat="server" Text='<%# Bind("Rate") %>'></asp:Label>
                                </em></strong>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="Rate" 
                            SortExpression="Rate">
                            <ItemTemplate>
                                <asp:Button ID="Button2" runat="server" 
                                    style="font-weight: 700; font-style: italic" Text="Buy Now" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [ProductMst1] WHERE ([CatId] = @CatId)">
                    <SelectParameters>
                        <asp:FormParameter DefaultValue="Vegetables" FormField="Vegetables" 
                            Name="CatId" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
</table>
</asp:Content>

