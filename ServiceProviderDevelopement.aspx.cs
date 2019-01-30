using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class ServiceProviderDevelopement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["ia"] = Session["idd"];
        Label1.Text ="Welcome"+" "+Session["name"].ToString();
        using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select images from serviceproviderregister where email='" + Session["email"] + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList2.DataSource = dt;
            DataList2.DataBind();
            conn.Close();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("http://localhost:1566/Login.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        String path = Server.MapPath("IMAGES/");
        if (FileUpload1.HasFile)
        {
            String ext = Path.GetExtension(FileUpload1.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                String name = "IMAGES/" + FileUpload1.FileName;
                String ss = "insert into imageupload(category,name,images) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + name + "')";
                SqlCommand cmd = new SqlCommand(ss, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label4.Text = "Successfully uploaded";
                Label4.ForeColor = System.Drawing.Color.LightGreen;
            }
            else
            {
                Label4.Text = "Images should be in jpgor png format";
            }
        }
        else
        {
            Label4.Text = "Please select the file!!";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        String path = Server.MapPath("IMAGES/");
        if (FileUpload1.HasFile)
        {
            String ext = Path.GetExtension(FileUpload1.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                String name = "IMAGES/" + FileUpload1.FileName;
                String ss = "insert into books(category,name,images) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + name + "')";
                SqlCommand cmd = new SqlCommand(ss, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label4.Text = "Successfully uploaded";
                Label4.ForeColor = System.Drawing.Color.LightGreen;
            }
            else
            {
                Label4.Text = "Images should be in jpgor png format";
            }
        }
        else
        {
            Label4.Text = "Please select the file!!";
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        String path = Server.MapPath("IMAGES/");
        if (FileUpload1.HasFile)
        {
            String ext = Path.GetExtension(FileUpload1.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                String name = "IMAGES/" + FileUpload1.FileName;
                String ss = "insert into food(category,name,images) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + name + "')";
                SqlCommand cmd = new SqlCommand(ss, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label4.Text = "Successfully uploaded";
                Label4.ForeColor = System.Drawing.Color.LightGreen;
            }
            else
            {
                Label4.Text = "Images should be in jpgor png format";
            }
        }
        else
        {
            Label4.Text = "Please select the file!!";
        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        String path = Server.MapPath("IMAGES/");
        if (FileUpload1.HasFile)
        {
            String ext = Path.GetExtension(FileUpload1.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                String name = "IMAGES/" + FileUpload1.FileName;
                String ss = "insert into jewellery(category,name,images) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + name + "')";
                SqlCommand cmd = new SqlCommand(ss, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label4.Text = "Successfully uploaded";
                Label4.ForeColor = System.Drawing.Color.LightGreen;
            }
            else
            {
                Label4.Text = "Images should be in jpgor png format";
            }
        }
        else
        {
            Label4.Text = "Please select the file!!";
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        String path = Server.MapPath("IMAGES/");
        if (FileUpload1.HasFile)
        {
            String ext = Path.GetExtension(FileUpload1.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                String name = "IMAGES/" + FileUpload1.FileName;
                String ss = "insert into other(category,name,images) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + name + "')";
                SqlCommand cmd = new SqlCommand(ss, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label4.Text = "Successfully uploaded";
                Label4.ForeColor = System.Drawing.Color.LightGreen;
            }
            else
            {
                Label4.Text = "Images should be in jpgor png format";
            }
        }
        else
        {
            Label4.Text = "Please select the file!!";
        }

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlDataAdapter Adp = new SqlDataAdapter("select * from imageuploadcomment", con);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlDataAdapter Adp = new SqlDataAdapter("select * from bookcomment", con);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlDataAdapter Adp = new SqlDataAdapter("select * from foodcomment", con);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlDataAdapter Adp = new SqlDataAdapter("select * from jewellerycomment", con);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlDataAdapter Adp = new SqlDataAdapter("select * from othercomment", con);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        String category = TextBox3.Text;
        int id =Convert.ToInt32(TextBox4.Text);
        if(category.Equals("CLOTHES")||category.Equals("Clothes")||category.Equals("clothes"))
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from imageupload where id="+id+"",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label7.Text = "Record Successfully Deleted!!";
            Label7.ForeColor = System.Drawing.Color.Lime;
        }
        else if (category.Equals("BOOKS") || category.Equals("Books") || category.Equals("books"))
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from books where id=" + id + "", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label7.Text = "Record Successfully Deleted!!";
            Label7.ForeColor = System.Drawing.Color.Lime;
        }
        else if (category.Equals("FOOD") || category.Equals("food") || category.Equals("Food"))
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from food where id=" + id + "", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label7.Text = "Record Successfully Deleted!!";
            Label7.ForeColor = System.Drawing.Color.Lime;
        }
        else if (category.Equals("JEWELLERY") || category.Equals("Jewellery") || category.Equals("jewellery"))
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from jewellery where id=" + id + "", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label7.Text = "Record Successfully Deleted!!";
            Label7.ForeColor = System.Drawing.Color.Lime;
        }
        else if (category.Equals("OTHER") || category.Equals("Other") || category.Equals("other"))
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from other where id=" + id + "", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label7.Text = "Record Successfully Deleted!!";
            Label7.ForeColor = System.Drawing.Color.Lime;
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        lblStatus6.Text = System.DateTime.Now.ToLongTimeString();
    }
}