using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ADMIN_UpadateServiceProvider : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int pas = Convert.ToInt32(pass.Text);
        int idd = Convert.ToInt32(TextBox1.Text);
        String stat = "pending";
        if (role1.Text == "User" || role1.Text == "user" || role1.Text == "USER")
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update userregister set name='"+User.Text+"',faname='"+father.Text+"',email='"+email.Text+"',passwo="+pas+",designation='"+design.Text+"',addressq='"+addr.Text+"',city='"+city1.Text+"',states='"+state1.Text+"',country='"+country1.Text+"',roles='"+role1.Text+"' where id="+idd+"", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Details have successfully been modified!!!";
        }
        if (role1.Text == "ServiceProvider" || role1.Text == "serviceProvider" || role1.Text == "Serviceprovider" || role1.Text == "ServiceProvider" || role1.Text =="SERVICEPROVIDER")
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update serviceproviderregister set name='" + User.Text + "',faname='" + father.Text + "',email='" + email.Text + "',passwo=" + pas + ",designation='" + design.Text + "',addressq='" + addr.Text + "',city='" + city1.Text + "',states='" + state1.Text + "',country='" + country1.Text + "',roles='" + role1.Text + "',statuss='" + stat + "' where id=" + idd + "", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Details have successfully been modified!!!";
        }
    }
    protected void design_TextChanged(object sender, EventArgs e)
    {

    }
    protected void city1_TextChanged(object sender, EventArgs e)
    {

    }
}