using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class USER_ChangeUserPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int ide = Convert.ToInt32(Session["ia"]);
        int nepas = Convert.ToInt32(TextBox2.Text);
        int oldpas = Convert.ToInt32(TextBox1.Text);
        int conpas = Convert.ToInt32(TextBox3.Text);
        if (oldpas != nepas)
        {
            if (nepas == conpas)
            {
                SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("update userregister set passwo=" + nepas + " where id=" + ide + "", con);
                int s = cmd.ExecuteNonQuery();
                if (s >= 1)
                {
                    lblMessage.Text = "Details have successfully been modified!!!";
                    lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                }
                else
                {
                    lblMessage.Text = "Sorry Something went wrong!";
                    lblMessage.ForeColor = System.Drawing.Color.IndianRed;
                }
            }

            else
            {
                lblMessage.Text = "Confirmation password and new password mismatched!!!";
                lblMessage.ForeColor = System.Drawing.Color.IndianRed;
            }
        }
        else
        {
            lblMessage.Text = "Please enter new password";
            lblMessage.ForeColor = System.Drawing.Color.IndianRed;
        }
    }
}