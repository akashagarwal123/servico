using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;
using System.IO;
using System.Text;
using System.Windows;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GenerateOTP(object sender, EventArgs e)
    {
        string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
        string numbers = "1234567890";

        string characters = numbers;
        if (rbType.SelectedItem.Value == "1")
        {
            characters += alphabets + small_alphabets + numbers;
        }
        int length = int.Parse(ddlLength.SelectedItem.Value);
        string otp = string.Empty;
        for (int i = 0; i < length; i++)
        {
            string character = string.Empty;
            do
            {
                int index = new Random().Next(0, characters.Length);
                character = characters.ToCharArray()[index].ToString();
            } while (otp.IndexOf(character) != -1);
            otp += character;
        }
        Session["otp"] = otp;
        try
        {

                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("crazzyprogrammer45@gmail.com");
                mail.To.Add(TextBox1.Text);
                mail.Subject = "Servico OTP Delivery System ";
                mail.Body = "Hello"+" "+TextBox2.Text+" "+"your OTP is"+" "+otp+" "+"Thank you for visiting us."+". "+"Verify yourself using this OTP!!!" ;

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("crazzyprogrammer45@gmail.com", "Google@123");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
            }
            catch (Exception ex)
            {
               lblOTP.Text = "Retry!!!"+ex;
                lblOTP.ForeColor=System.Drawing.Color.IndianRed;
            }
        }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox4.Text=="User")
        {
            if (TextBox3.Text==Convert.ToString(Session["otp"]))
            {
                using (SqlConnection conn = new SqlConnection(@"Data Source=DELL-PC\SQLEXPRESS;Initial Catalog=servico;Integrated Security=True"))
                {
                                            conn.Open();
                   String s = "select passwo from userregister where email='"+TextBox1.Text+"'";
                   SqlDataAdapter sda = new SqlDataAdapter(s, conn);
                   DataTable dt= new DataTable();
                   sda.Fill(dt);
                   GridView1.DataSource = dt;
                   GridView1.DataBind();
                   Label5.Text = "Your password is: ";
                   Label5.ForeColor = System.Drawing.Color.ForestGreen;
                }
            }
                else
                {
                Label5.Text = "Invalid email";
                Label5.ForeColor = System.Drawing.Color.IndianRed;
                }
            }
 
        }
    }
