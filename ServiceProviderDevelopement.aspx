<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ServiceProviderDevelopement.aspx.cs" Inherits="ServiceProviderDevelopement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UPLOAD</title>
    <style type="text/css">
        .auto-style1 {
            width: 46px;
        }
    </style>
</head>
<body style="background-image:url(https://i.imgur.com/DuPgm.jpg)">
    <form id="form1" runat="server">
        <div align="right">
            <asp:Button ID="Button13" runat="server" ForeColor="IndianRed" BackColor="Lavender" PostBackUrl="~/ChangeServiceProviderPassword.aspx" Text="CHANGE PASSWORD" />
        </div>
    <div align="center">
    
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Names="algerian" Font-Size="XX-Large"></asp:Label>
         <div align="right">
        <asp:Button ID="Button1" runat="server" Text="LOGOUT" Font-Size="Medium" ForeColor="red" OnClick="Button1_Click" />
              <br />
              <br />
              <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
          <div align="Right">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="lblStatus6" runat="server" Font-Bold="true" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                        <br /><br />
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
            </div>
        </div>
        <br />
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table border="1" style="color:forestgreen;border-color:antiquewhite;background-color:lavenderblush">
                    <tr>
                        <td>
                            <img /="" height="200" src='<%#Eval("images","../{0}")%>' style="border-style:groove;border-color:red" width="300"> </img></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <br />
        <fieldset>
            <legend style="color:aqua" align="center">Select the images to upload!!</legend>
            <br />
        <asp:TextBox ID="TextBox1" BackColor="pink" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 0px" Width="143px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="CATEGORY" ForeColor="BurlyWood"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox2" BackColor="LavenderBlush" runat="server" style="margin-left: 0px" Width="138px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" ForeColor="YellowGreen" Text="NAME"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:FileUpload ID="FileUpload1" ForeColor="Red" runat="server" />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <br />
        <br />
        <br />
        <table border="1" style="border-color:floralwhite;border-style:ridge;background-color:indianred">
        <tr>
        <td>
            <asp:Button ID="Button2" runat="server" Text="CLOTHES" OnClick="Button2_Click" /></td>
        <td class="auto-style1">
            <asp:Button ID="Button3" runat="server" Text="BOOKS" OnClick="Button3_Click" /></td>
        <td>
            <asp:Button ID="Button4" runat="server" Text="FOOD" OnClick="Button4_Click" /></td>
        <td>
            <asp:Button ID="Button5" runat="server" Text="JEWELLERY" OnClick="Button5_Click" /></td>
        <td>
            <asp:Button ID="Button6" runat="server" Text="OTHER" OnClick="Button6_Click" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="http://www.iconarchive.com/download/i87021/graphicloads/colorful-long-shadow/Arrow-upload-2.ico" Height="40" Width="40" /></td>
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="http://aux.iconspalace.com/uploads/books-icon-256-187175880.png" Height="40" Width="40" /></td>
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="https://cdn2.iconfinder.com/data/icons/junk-food-emoji-set/100/FRIES_1-512.png" Height="40" Width="40"/></td>
                <td>
                    <asp:Image ID="Image4" runat="server" ImageUrl="https://www.bulgari.com/media/alpencms/campaign_2016/cms_slider_image9_5190.jpg" Height="40" Width="40" /></td>
                <td>
                    <asp:Image ID="Image5" runat="server"  ImageUrl="http://www.onthegokids.co.uk/wp-content/uploads/2016/02/WGDS-Other-icon-e1417451155399.jpg" Height="40" Width="40"/></td>
            </tr>
            </table>

        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
    <div align="left">
            <fieldset>
        <legend style="color:aquamarine;font-family:Algerian">Delete Offer!!</legend>

                <asp:Label ID="Label5" runat="server" Text="CATEGORY" ForeColor="YellowGreen"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="ID" ForeColor="YellowGreen"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="DELETE" BackColor="LightYellow" ForeColor="IndianRed" />
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" ForeColor="Lime"></asp:Label>

    </fieldset>
            </div>
            <br />
            </fieldset>
        <br />
        <br />
        <div>
        <table border="1">
            <tr>
                <td>
                    <asp:Button ID="Button7" runat="server" Text="CLOTHES" BackColor="Lavender" OnClick="Button7_Click" /></td>
                <td>
                    <asp:Button ID="Button8" runat="server" Text="BOOKS" BackColor="LightCoral" OnClick="Button8_Click" /></td>
                <td>
                    <asp:Button ID="Button9" runat="server" Text="FOOD" BackColor="LightBlue" OnClick="Button9_Click" /></td>
                <td>
                    <asp:Button ID="Button10" runat="server" Text="JEWELLERY"  BackColor="LightCyan" OnClick="Button10_Click"/></td>
                <td>
                    <asp:Button ID="Button11" runat="server" Text="OTHER" BackColor="LightSkyBlue" OnClick="Button11_Click" /></td>
            </tr>

        </table>
            <br />
            <asp:Image ID="Image6" runat="server" ImageUrl="https://us.123rf.com/450wm/onirb/onirb1310/onirb131001077/23128914-pastel-gray-stylish-web-link-3d-graphic-with-creative-click-here-sign-on-noble-stone-texture.jpg?ver=6" Height="100" Width="100" />
        </div>
        <br />
        <br />
        <fieldset>
            <legend style="color:aquamarine" align="center">VIEW COMMENTS</legend>
        <p>
            &nbsp;</p>
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
        </fieldset>
        <br />
      </div>
        <br />
<div align="left">
    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Snow" NavigateUrl="~/ServiceProviderViewOffer.aspx">Click Here To View Offers!!!</asp:HyperLink>
</div>
    </form>
</body>
</html>
