<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ServiceProviderViewOffer.aspx.cs" Inherits="ServiceProviderViewOffer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(https://i.pinimg.com/236x/5c/03/22/5c03223c9ad677a2d6cbf712492fc344.jpg)">
    <form id="form1" runat="server">
    <div align="center">
         <table border="1" style="border-color:floralwhite;border-style:ridge;background-color:indianred">
        <tr>
        <td>
            <asp:Button ID="Button2" runat="server" Text="CLOTHES" OnClick="Button2_Click" /></td>
        <td class="auto-style1">
            <asp:Button ID="Button3" runat="server" Text="BOOKS" OnClick="Button3_Click" /></td>
        <td>
            <asp:Button ID="Button4" runat="server" Text="FOOD" OnClick="Button4_Click" style="height: 26px" /></td>
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
    </div>
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
            <br />
            <asp:Button ID="Button1" runat="server" Text="GO_BACK" Width="1248px" BackColor="LightBlue" ForeColor="DarkGreen" PostBackUrl="~/ServiceProviderDevelopement.aspx" />
    </div>
    </form>
</body>
</html>
