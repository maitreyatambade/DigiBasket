<%@ Page Language="C#" AutoEventWireup="true" CodeFile="New_User.aspx.cs" Inherits="New_User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 500px;
            font-family: Verdana;
            height: 242px;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
            text-align: center;
            font-size: x-large;
        }
        .style6
        {
            text-align: center;
            height: 55px;
        }
        .style7
        {
            text-align: left;
            height: 55px;
        }
        .style8
        {
            text-align: center;
            height: 57px;
        }
        .style9
        {
            text-align: left;
            height: 57px;
        }
        .style10
        {
            text-align: center;
            height: 47px;
        }
        .style11
        {
            text-align: left;
            height: 47px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td style="text-align: center; font-weight: 700; background-color: #0066FF">
                <asp:Image ID="Image1" runat="server" Height="121px" 
                    ImageUrl="~/data/general/Digi_Telecommunications.svg.png" Width="161px" />
                <asp:Image ID="Image2" runat="server" Height="107px" 
                    ImageUrl="~/data/general/shopping-2477511_960_720.png" Width="183px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table align="center" cellpadding="0" cellspacing="0" class="style2">
                    <tr>
                        <td class="style5" colspan="2">
                            New User</td>
                        <td class="style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Email Id :
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txtemail" runat="server" Height="32px" Width="229px"></asp:TextBox>
                        </td>
                        <td class="style7">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="* Enter proper Email ID" 
                                Font-Size="Small" ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ValidationGroup="submit"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Password:</td>
                        <td class="style7">
                            <asp:TextBox ID="txtpass" runat="server" Height="32px" Width="229px" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="style7">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtpass" ErrorMessage=" * please Enter password" 
                                Font-Size="Small" ForeColor="Red" ValidationGroup="submit"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Confirm Password:</td>
                        <td class="style7">
                            <asp:TextBox ID="txtpass2" runat="server" Height="32px" Width="229px" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="style7">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtpass" ControlToValidate="txtpass2" 
                                ErrorMessage="* password not match" Font-Size="Small" ForeColor="Red" 
                                ValidationGroup="submit"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Security Question :
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="ddsqusetion" runat="server" Height="32px" Width="229px">
                                <asp:ListItem>Birth Place</asp:ListItem>
                                <asp:ListItem>School Name</asp:ListItem>
                                <asp:ListItem>First mobile Number</asp:ListItem>
                                <asp:ListItem>Nick Name</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Answer :</td>
                        <td class="style9">
                            <asp:TextBox ID="txtanswer" runat="server" Height="32px" Width="229px"></asp:TextBox>
                        </td>
                        <td class="style9">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtanswer" ErrorMessage="* required" Font-Size="Small" 
                                ForeColor="Red" ValidationGroup="submit"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Address:</td>
                        <td class="style9">
                            <asp:TextBox ID="txtadd" runat="server" Height="105px" Width="258px"></asp:TextBox>
                        </td>
                        <td class="style9">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtadd" ErrorMessage="* required" Font-Size="Small" 
                                ForeColor="Red" ValidationGroup="submit"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Mobile Number:</td>
                        <td class="style9">
                            <asp:TextBox ID="txtmob" runat="server" Height="32px" Width="229px"></asp:TextBox>
                        </td>
                        <td class="style9">
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ControlToValidate="txtmob" ErrorMessage="* Enter proper Mobile No." 
                                Font-Size="Small" ForeColor="Red" MaximumValue="9999999999" 
                                MinimumValue="7777777777" ValidationGroup="submit"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            </td>
                        <td class="style11">
                            <asp:Button ID="Button1" runat="server" Height="33px" Text="SUBMIT" 
                                Width="79px" onclick="Button1_Click" ValidationGroup="submit" />
                        </td>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
    </form>
</body>
</html>
