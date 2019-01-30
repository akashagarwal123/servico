<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="USER_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VIEW OFFERS</title>
</head>
<body style="background-image:url(http://avante.biz/wp-content/uploads/Plain-Wallpaper/Plain-Wallpaper-040.jpg)">
    <form id="form1" runat="server">
        <fieldset>
            <legend style="color:lightyellow;font-style:italic">VIEW DETAILS!!</legend>
        <div align="center">
            <asp:Label ID="Label1" runat="server" ForeColor="SandyBrown" Font-Size="XX-Large" Font-Names="algerian"></asp:Label>
           <br />
            <div align="right">
             <asp:Button ID="Button8" runat="server" Text="Change Password" BackColor="Yellow" ForeColor="Red" PostBackUrl="~/USER/ChangeUserPassword.aspx" />
           </div>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <div align="Right">
              <asp:Button ID="Button1" runat="server" ForeColor="Red" BackColor="Yellow" Text="LOGOUT" style="margin-left: 3px" OnClick="Button1_Click"/>
             <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
          
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="lblStatus6" runat="server" Font-Bold="true" Font-Size="XX-Large" ForeColor="LightCoral"></asp:Label>
                        <br /><br />
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
            </div>
            <br />
            <br />
            <asp:DataList ID="DataList2" runat="server">
                <ItemTemplate>
                    <table border="1" style="color:forestgreen;border-color:antiquewhite;background-color:lavenderblush">
                        <tr>
                             <td>
                                <img src="<%#Eval("images","../{0}")%>" height="300" width="300"/ style="border-style:groove;border-color:red">
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <div align="right">
        </div>
            <br />
            <br/>
            <br />
            <br />
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
                    <asp:Image ID="Image2" runat="server" ImageUrl="http://www.iconarchive.com/download/i87021/graphicloads/colorful-long-shadow/Arrow-upload-2.ico" Height="40" Width="40" /></td>
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="http://aux.iconspalace.com/uploads/books-icon-256-187175880.png" Height="40" Width="40" /></td>
                <td>
                    <asp:Image ID="Image4" runat="server" ImageUrl="https://cdn2.iconfinder.com/data/icons/junk-food-emoji-set/100/FRIES_1-512.png" Height="40" Width="40"/></td>
                <td>
                    <asp:Image ID="Image5" runat="server" ImageUrl="https://www.bulgari.com/media/alpencms/campaign_2016/cms_slider_image9_5190.jpg" Height="40" Width="40" /></td>
                <td>
                    <asp:Image ID="Image6" runat="server"  ImageUrl="http://www.onthegokids.co.uk/wp-content/uploads/2016/02/WGDS-Other-icon-e1417451155399.jpg" Height="40" Width="40"/></td>
            </tr>
            </table> 
            <br />
            <br />
            <fieldset>
                <legend style="font-family:Castellar;color:lightblue">Please Enter Your Valuable Comment!!!</legend>
                <br />
                &nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Width="243px" Height="26px" BackColor="Lavender" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="LightGreen" Text="CATEGORY"></asp:Label>
                <br />
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="272px" BackColor="LightCoral" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" ForeColor="LightPink" Text="Comment(Interested/Not-interested)"></asp:Label><br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" Height="32px" Text="SUBMIT" ForeColor="Red" BackColor="Wheat" Width="86px" OnClick="Button7_Click" />
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" ForeColor="LightBlue"></asp:Label>
                <br />
            </fieldset>
            <br />
            </fieldset>   
        </div>
       <br />
        <br />
        <br />
        <div align="center">
            <fieldset>
                <legend style="font-style:oblique;color:azure">Click above!!</legend>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table border="1" style="color:forestgreen;border-color:antiquewhite;background-color:lavenderblush">
                        <tr>
                            <th>ID</th>
                            <th>CATEGORY</th>
                            <th>NAMES</th>
                            <th>IMAGES</th>
                        </tr>
                        <tr>
                            <td><%#Eval("id")%></td>
                            <td><%#Eval("category")%></td>
                            <td><%#Eval("name")%></td>
                            <td>
                                <img src="<%#Eval("images","../{0}")%>" height="100" width="100"/ style="border-style:groove;border-color:red">
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </fieldset>
        </div>
    </form>
</body>
</html>
