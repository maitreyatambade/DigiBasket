<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

   
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" 
                    style="text-align: right" PostBackUrl="~/index.aspx">Click Here For User Login</asp:LinkButton>
            </td>
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
                            <strong>Admin LOG-IN</strong></td>
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
                            <asp:TextBox ID="txtemail" runat="server" Height="32px" Width="229px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Password :
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="txtpass" runat="server" Height="32px" TextMode="Password" 
                                Width="229px"></asp:TextBox>
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
                            <asp:Button ID="Button1" runat="server" Height="33px" Text="LOGIN" 
                                Width="79px" onclick="Button1_Click" />
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="lblmsg" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
&nbsp;&nbsp;
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
