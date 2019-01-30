using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Text;
using System.Windows;
using System.Net.Mail;
using System.Data.SqlClient;
public partial class ADMIN_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlDataAdapter Adp = new SqlDataAdapter("select id,name,faname,email,designation,city,states,country,roles,statuss from serviceproviderregister", con);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String verify = "verified";
        using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update serviceproviderregister set statuss='" + verify + "' where id='" + Convert.ToInt32(TextBox1.Text) + "'";
            cmd.ExecuteNonQuery();
            Label2.Text = "Successfully Updated";
        }
        }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {

            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("crazzyprogrammer45@gmail.com");
            mail.To.Add(TextBox2.Text);
            mail.Subject = "Servico OTP Delivery System ";
            mail.Body = "You have beem successfully verified as Service Provider.Thank you for visiting us!!";

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("crazzyprogrammer45@gmail.com", "Google@123");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
        }
        catch (Exception ex)
        {
            Label2.Text = "Retry!!!" + ex;
            Label2.ForeColor = System.Drawing.Color.IndianRed;
        }
    }
}