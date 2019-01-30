<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin login.aspx.cs" Inherits="ADMIN_admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN LOGIN</title>
</head>
<body style="background-image:url(https://images.pexels.com/photos/207301/pexels-photo-207301.jpeg?cs=srgb&dl=hd-wallpaper-ivy-leaves-207301.jpg&fm=jpg)">
    <form id="form1" runat="server">
    <div align="center">
       <br /><br /><br /><br /><br /><br /><br />
        <div align="center">
            <asp:Image ID="Image1" runat="server" ImageUrl="https://statesymbolsusa.org/sites/statesymbolsusa.org/files/primary-images/Rose-NationalflowerUSA.jpg" BorderColor="Black" BorderStyle="Groove" BorderWidth="6" Height="200" Width="200" />
        </div>
        <br /><br />
         <div align="Center">
        <table border="1" style="background-color:blanchedalmond">
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lblStatus" Font-Names="algerian" runat="server" Text="EMPLOYEE LOGIN" ForeColor="DarkBlue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblName" runat="server" Text="NAME" ForeColor="Blue"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="Blue"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button runat="server" ID="btnlogin" ForeColor="Black" Text="LOGIN" BorderColor="GhostWhite" BorderStyle="Inset" BorderWidth="4" OnClick="btnlogin_Click" />
                </td>
            </tr>
        </table>
             <br />
             <br /><br />
             <asp:Button ID="btngo_back" runat="server" Height="30px" Width="187px" Text="GO_BACK" PostBackUrl="~/Login.aspx" BackColor="GhostWhite" ForeColor="#800000" Font-Names="algerian" />
    
    </div>
    </form>
</body>
</html>
