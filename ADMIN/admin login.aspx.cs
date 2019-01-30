using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class ADMIN_admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (FormsAuthentication.Authenticate(TextBox1.Text, TextBox2.Text))
        {
            Session["username"] = TextBox1.Text;
            Server.Transfer("~//ADMIN/welcomeadmin.aspx");
        }
        else
        {
            Response.Write("<script>alert('Sorry!!Retry<br/>Please Check your username and password again.')</script>");
        }
    }
}