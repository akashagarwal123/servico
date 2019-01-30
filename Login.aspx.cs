using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        String email1 = TextBox1.Text;
        int pass = Convert.ToInt32(TextBox2.Text);
        String role = TextBox3.Text;
        if (email1 != null && pass != null)
        {
            if (role == "ServiceProvider")
            {
                SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("(Select id,statuss,email,name from serviceproviderregister where email='"+email1+"' and passwo="+pass+")",con);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    Session["idd"] = sdr["id"];
                    Session["email"] = email1;
                    Session["name"] = sdr["name"];
                    String s = sdr["statuss"].ToString();
                    if (s == "verified")
                    {
                        Response.Redirect("http://localhost:1566/ServiceProvider.aspx");
                    }
                    else
                    {
                        Label1.Text = "Access Denied.Please wait till you get verified";
                        Label1.ForeColor = System.Drawing.Color.IndianRed;
                    }
                }
            }
            if (role == "User")
            {
                SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("(Select id,name,email from userregister where email='"+email1+"' and passwo="+pass+")",con);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    Session["ia"] = sdr["id"];
                    Session["name"] = sdr["name"];
                    Session["email"] = sdr["email"].ToString();
                    Response.Redirect("http://localhost:1566/USER/View.aspx");
                }

            }
        }
        else if(email1==null)
        {
            Label1.Text = "Please fill all the entries as Role-(ServiceProvider/Admin/User) with proper email and password";
            Label1.ForeColor = System.Drawing.Color.IndianRed;
        }

    }
}
 