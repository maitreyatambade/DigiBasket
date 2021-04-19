<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forget_Password.aspx.cs" Inherits="Forget_Password" %>

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
                            FORGET PASSWORD</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Email Id :
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="229px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Security Question :
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="ddsquestion" runat="server" Height="32px" Width="229px">
                                <asp:ListItem>Birth Place</asp:ListItem>
                                <asp:ListItem>School Name</asp:ListItem>
                                <asp:ListItem>First mobile Number</asp:ListItem>
                                <asp:ListItem>Nick Name</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Answer :</td>
                        <td class="style9">
                            <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="229px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            </td>
                        <td class="style11">
                            <asp:Button ID="Button1" runat="server" Height="33px" Text="SUBMIT" 
                                Width="79px" onclick="Button1_Click"   />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/index.aspx">Go to LOGIN</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
