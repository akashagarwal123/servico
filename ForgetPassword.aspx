<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(https://backgroundcheckall.com/wp-content/uploads/2017/12/professional-background-hd-7.jpg);color:yellow">
    <form id="form1" runat="server">
    <div align="center">
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="SERVICO MAIL DELIEVERY SYSTEM" Font-Names="algerian" Font-Size="XX-Large" ForeColor="orange"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <table border="1" cellpadding="0" cellspacing="0">
        <caption>Generate OTP</caption>
    <tr>
        <td>
            <asp:DropDownList ID="ddlLength" runat="server">
                <asp:ListItem Text="5" Value="5" />
                <asp:ListItem Text="8" Value="8" />
                <asp:ListItem Text="10" Value="10" />
            </asp:DropDownList>
        </td>
        <td>
            <asp:RadioButtonList ID="rbType" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="Alphanumeric" Value="1" Selected="True" />
                <asp:ListItem Text="Numeric" Value="2" />
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Email_ID"></asp:Label></td>
            &nbsp;
           <td colspan="2"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td> 

    </tr>
        <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>
            &nbsp;
           <td colspan="2"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td> 

    </tr>
         <tr>
              <td colspan="3">
            <asp:Button ID="btnGenerate" Text="Generate OTP" runat="server" OnClick="GenerateOTP" BackColor="#ff99ff" />
        </td>
        </tr>
    <tr>
        <td colspan="3">
            &nbsp;<asp:Label ID="lblOTP" runat="server" />
        </td>
    </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="Label3" runat="server" Text="Verify Yourself!!!"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Enter OTP: "></asp:Label></td>
            <td colspan="2" align="center">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Enter Role: "></asp:Label></td>
            <td colspan="2" align="center">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:ImageButton ID="ImageButton1" ImageUrl="http://www.clker.com/cliparts/l/n/a/E/b/t/check-mark-button-hi.png" Height="20" Width="20" runat="server" OnClick="ImageButton1_Click" />
            </td>
        </tr>
</table>

        <br />
        <asp:Label ID="Label5" runat="server"></asp:Label>

        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>

        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="GO_BACk" PostBackUrl="~/Login.aspx" BackColor="Yellow" ForeColor="IndianRed"  />

    </div>
    </form>
</body>
</html>
