using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (role1.Text == "User" || role1.Text == "USER" || role1.Text == "user")
        {
            int passw = Convert.ToInt32(pass.Text);
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            String path = Server.MapPath("PROFILEPHOTOS/");
            if (FileUpload1.HasFile)
            {
                String ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    String name = "PROFILEPHOTOS/" + FileUpload1.FileName;
                    String ss = "insert into userregister(name,faname,email,passwo,designation,addressq,city,states,country,roles,images) values ('" + User.Text + "','" +father.Text + "','"+email.Text+"',"+passw+",'"+design.Text+"','"+addr.Text+"','"+city1.Text+"','"+state1.Text+"','"+country1.Text+"','"+role1.Text+"','"+name+"')";
                    SqlCommand cmd = new SqlCommand(ss, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label1.Text = "Successfully uploaded";
                    Label1.ForeColor = System.Drawing.Color.LightGreen;
                }
                else
                {
                    Label1.Text = "Images should be in jpgor png format";
                }
            }
            else
            {
                Label1.Text = "Please select the file!!";
            }
        }


        if (role1.Text == "ServiceProvider" || role1.Text == "serviceprovider" || role1.Text == "serviceProvider")
        {
            int passw = Convert.ToInt32(pass.Text);
            String status = "pending";
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            String path = Server.MapPath("PROFILEPHOTOS/");
            if (FileUpload1.HasFile)
            {
                String ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    String name = "PROFILEPHOTOS/" + FileUpload1.FileName;
                    String ss = "insert into serviceproviderregister(name,faname,email,passwo,designation,addressq,city,states,country,roles,images,statuss) values ('" + User.Text + "','" + father.Text + "','" + email.Text + "'," + passw + ",'" + design.Text + "','" + addr.Text + "','" + city1.Text + "','" + state1.Text + "','" + country1.Text + "','" + role1.Text + "','" + name + "','"+status+"')";
                    SqlCommand cmd = new SqlCommand(ss, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label1.Text = "Successfully recorded.Please wait till verfication!!!";
                    Label1.ForeColor = System.Drawing.Color.LightGreen;
                }
                else
                {
                    Label1.Text = "Images should be in jpgor png format";
                }
            }
            else
            {
                Label1.Text = "Please select the file!!";
            }
        }
    }

  
    protected void city1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void design_TextChanged(object sender, EventArgs e)
    {

    }
}