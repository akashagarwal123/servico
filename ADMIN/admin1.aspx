<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin1.aspx.cs" Inherits="ADMIN_admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN</title>
</head>
<body style="background-image:url(http://www.technocrazed.com/wp-content/uploads/2015/12/Blue-Wallpaper-For-Background-19.jpg)">
    <form id="form1" runat="server">
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="SERVICO MANAGEMENT SYSTEM" ForeColor="Yellow" Font-Names="algerian" Font-Size="XX-Large"></asp:Label>
        &nbsp;
        <div align="right">
        <asp:HyperLink ID="HyperLink1" runat="server" href="../Login.aspx" ForeColor="WhiteSmoke">LOGOUT</asp:HyperLink>
            <br />
        </div>
        <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
          <div align="Right">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="lblStatus6" runat="server" Font-Bold="true" Font-Size="XX-Large" ForeColor="WhiteSmoke"></asp:Label>
                        <br /><br />
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
            </div>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:Image ID="Image1" runat="server" BorderColor="Gainsboro" BorderStyle="Inset" BorderWidth="5" Height="419px" Width="629px" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:Timer ID="Timer2" runat="server" Interval="1000" OnTick="Timer2_Tick">
        </asp:Timer>
        <br />
        <table border="1">
        <caption><asp:Label ID="Label5" runat="server" Text="Enter CLIENT ID" ForeColor="Wheat"></asp:Label>
&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            </caption>
            <th>
         <asp:Label ID="Label2" runat="server" Text="USER" ForeColor="Yellow"></asp:Label></th>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <th> <asp:Label ID="Label3" runat="server" Text="SERVICE PROVIDER" ForeColor="Yellow"></asp:Label></th>
        <br />
        <br />
            <tr>

        <td><asp:Button ID="Button1" runat="server" Text="VIEWCMNT" BackColor="LightPink" OnClick="Button1_Click" style="margin-left: 0px" Width="92px" /></td>
        <td><asp:Button ID="Button2" runat="server" Text="VERIFY REQUESTS" BackColor="LightPink" OnClick="Button2_Click" style="margin-left: 0px" Width="92px" /></td>
        <br />
                </tr>
            <tr>
        <td> <asp:Button ID="Button8" runat="server" Text="Delete USer" style="margin-left: 0px" BackColor="LightPink" Width="93px" OnClick="Button8_Click"  /></td>
        <td> <asp:Button ID="Button4" runat="server" Text="DELETE" BackColor="LightPink" OnClick="Button4_Click" style="margin-left: 0px" Width="95px"/></td>
         </tr>
            <tr>
                <br />
            <td><asp:Button ID="Button5" runat="server" Text="ViEW" BackColor="LightPink" OnClick="Button5_Click" Width="94px"/></td>
       <td><asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="UPDATE" BackColor="LightPink" Width="93px" /></td>
        <br />
            </tr>
            <tr>
         <td>
             <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="DELCMNT" Width="93px" BackColor="LightPink" />
                </td>
         <td> <asp:Button ID="Button7" runat="server" Text="VIEW" BackColor="LightPink" OnClick="Button7_Click" Width="91px"/></td>
            <br />
            <br />
                </tr>
            </table>
         <br />
        <asp:Label ID="Label4" runat="server" ForeColor="LightPink"></asp:Label>
         <br />
           <div align="left">
            <fieldset>
        <legend style="color:aquamarine;font-family:Algerian">Delete Offer!!</legend><br />

                <asp:Label ID="Label6" runat="server" Text="CATEGORY" ForeColor="YellowGreen"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="id" runat="server" Text="ID" ForeColor="YellowGreen"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="DELETE" BackColor="LightPink" OnClick="Button3_Click"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="VIEW OFFER" BackColor="Lime" Width="103px" />
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" ForeColor="Lime"></asp:Label>

    </fieldset>
            </div>
         <br />
         <br />
         <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
             <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
             <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
             <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
             <RowStyle BackColor="White" ForeColor="#330099" />
             <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
             <SortedAscendingCellStyle BackColor="#FEFCEB" />
             <SortedAscendingHeaderStyle BackColor="#AF0101" />
             <SortedDescendingCellStyle BackColor="#F6F0C0" />
             <SortedDescendingHeaderStyle BackColor="#7E0000" />
         </asp:GridView>
            </div>
    </form>
</body>
</html>
