using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class USER_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome" + " " + Session["name"].ToString();
        using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select images from userregister where email='"+Session["email"]+"'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList2.DataSource = dt;
            DataList2.DataBind();
            conn.Close();
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from imageupload";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            conn.Close();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from books";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            conn.Close();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from food";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            conn.Close();
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from jewellery";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            conn.Close();
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from other";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("http://localhost:1566/Login.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        String category = TextBox2.Text;
        String comment = TextBox1.Text;
        if (category.Equals("Clothes") || category.Equals("CLOTHES") || category.Equals("clothes"))
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("insert into imageuploadcomment(category,comment) values('" + category + "','" + comment + "')", conn))
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label4.Text = "Sucessfully uploaded!!!";
                    Label4.ForeColor = System.Drawing.Color.ForestGreen;
                }
            }
        }
        else if (category.Equals("Books") || category.Equals("BOOKS") || category.Equals("books"))
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("insert into bookcomment(category,comment) values('" + category + "','" + comment + "')", conn))
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label4.Text = "Sucessfully uploaded!!!";
                    Label4.ForeColor = System.Drawing.Color.ForestGreen;
                }
            }
        }
        else if (category.Equals("FOOD") || category.Equals("food") || category.Equals("Food"))
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("insert into foodcomment(category,comment) values('" + category + "','" + comment + "')", conn))
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label4.Text = "Sucessfully uploaded!!!";
                    Label4.ForeColor = System.Drawing.Color.ForestGreen;
                }
            }
        }
        else if (category.Equals("jewellery") || category.Equals("Jewellery") || category.Equals("JEWELLERY"))
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("insert into jewellerycomment(category,comment) values('" + category + "','" + comment + "')", conn))
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label4.Text = "Sucessfully uploaded!!!";
                    Label4.ForeColor = System.Drawing.Color.ForestGreen;
                }
            }
        }
        else if (category.Equals("OTHER") || category.Equals("other") || category.Equals("Other"))
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("insert into othercomment(category,comment) values('" + category + "','" + comment + "')", conn))
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label4.Text = "Sucessfully uploaded!!!";
                    Label4.ForeColor = System.Drawing.Color.ForestGreen;
                }
            }
        }

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        lblStatus6.Text = System.DateTime.Now.ToLongTimeString();
    }
}