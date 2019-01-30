using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ADMIN_admin1 : System.Web.UI.Page
{
    static int i = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpadateServiceProvider.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlDataAdapter Adp = new SqlDataAdapter("select * from imageuploadcomment", con);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        String category = TextBox3.Text;
        int id = Convert.ToInt32(TextBox4.Text);
        if (category.Equals("CLOTHES") || category.Equals("Clothes") || category.Equals("clothes"))
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from imageupload where id=" + id + "", con);
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
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlDataAdapter Adp = new SqlDataAdapter("select id,name,faname,email,designation,city,states,country,roles from userregister", con);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        String id = TextBox1.Text;
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from serviceproviderregister where id="+id+"", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Label4.Text = "Record Successfully Deleted!!";
        Label4.ForeColor = System.Drawing.Color.Lime;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlDataAdapter Adp = new SqlDataAdapter("select id,name,faname,email,designation,city,states,country,roles from serviceproviderregister", con);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(TextBox1.Text);
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from userregister where id=" + id + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Label4.Text = "Record Successfully Deleted!!";
        Label4.ForeColor = System.Drawing.Color.Lime;
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(TextBox1.Text);
        SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from imageuploadcomment where id=" + id + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Label4.Text = "Record Successfully Deleted!!";
        Label4.ForeColor = System.Drawing.Color.Lime;

    }
    protected void Timer2_Tick(object sender, EventArgs e)
    {
        ++i;
        if (i == 1)
        {
            Image1.ImageUrl = "~\\MOTION//f1.jpg";
            i++;
        }
        else if (i == 2)
        {
            Image1.ImageUrl = "~\\MOTION//f2.jpg";
            i++;
        }
        else if (i == 3)
        {
            Image1.ImageUrl = "~\\MOTION//f3.jpg";
            i++;
        }
        else
        {
            Image1.ImageUrl = "~\\MOTION//f4.jpg";
            i = 1;
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        lblStatus6.Text = System.DateTime.Now.ToLongTimeString();
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        String cat = TextBox3.Text.ToLower();
        if (cat == "clothes")
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlDataAdapter Adp = new SqlDataAdapter("select id,category,name from imageupload", con);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView1.DataSource = Dt;
            GridView1.DataBind();
        }
        if (cat == "food")
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlDataAdapter Adp = new SqlDataAdapter("select id,category,name from food", con);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView1.DataSource = Dt;
            GridView1.DataBind();
        }
        if (cat == "jewellery")
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlDataAdapter Adp = new SqlDataAdapter("select id,category,name from jewellery", con);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView1.DataSource = Dt;
            GridView1.DataBind();
        }
        if (cat == "books")
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlDataAdapter Adp = new SqlDataAdapter("select id,category,name from books", con);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView1.DataSource = Dt;
            GridView1.DataBind();
        }
         if (cat == "other")
        {
            SqlConnection con = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True");
            con.Open();
            SqlDataAdapter Adp = new SqlDataAdapter("select id,category,name from other", con);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView1.DataSource = Dt;
            GridView1.DataBind();
        }
    }
}