using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;
using System.Net;
using System.Net.Sockets;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }




    protected void btPassRec_Click1(object sender, EventArgs e)
    {
        {
            String CS = ConfigurationManager.ConnectionStrings["SwapshopConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from Registration where REmail='" + tbEmailId.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Rid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("insert into ForgotPassword values('" + myGUID + "','" + Rid + "',getdate())", con);
                    cmd1.ExecuteNonQuery();

                    //send email
                    String ToEmailAddress = dt.Rows[0][2].ToString();
                    String Username = dt.Rows[0][1].ToString();
                    String EmailBody = "Hi " + Username + ",<br/><br/> Click the link below to reset your password <br/><br/>  http://localhost:53891/Swapshop/RecoverPassword.aspx?Rid=" + myGUID;
                    MailMessage PassRecMail = new MailMessage("ronakvaghasiya27@hotmail.com", ToEmailAddress);
                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";

                    SmtpClient SMTP = new SmtpClient("smtp-mail.outlook.com", 587);
                    //SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                    SMTP.Credentials = new NetworkCredential()
                    {
                        UserName = "ronakvaghasiya27@hotmail.com",
                        Password = "r0n4kasds"
                    };
                    SMTP.EnableSsl = true;
                    SMTP.Send(PassRecMail);

                    lblPassRec.Text = "Check your email to reset your password.";
                    lblPassRec.ForeColor = Color.Green;

                }
                else
                {
                    lblPassRec.Text = "OOps This email id DOES NOT exist in our database !";
                    lblPassRec.ForeColor = Color.Red;
                }
            }
        }
    }
}





         
    //        if (dt.Rows.Count != 0)
    //        {
    //            String myGUID = Guid.NewGuid().ToString();
    //            int Rid = Convert.ToInt32(dt.Rows[0][0]);
    //            SqlCommand cmd1 = new SqlCommand("insert into ForgotPassword values('"+myGUID+"','"+Rid+"',getdate())",con);
    //            cmd1.ExecuteNonQuery();

    //            //send email
    //            String ToEmailAddress = dt.Rows[0][3].ToString();
    //            String Username = dt.Rows[0][1].ToString();
    //            String EmailBody = "Hi "+Username+ ",<br/><br/> Click the link below to reset your password <br/><br/>http://localhost:53891/Swapshop/RecoverPassword.aspx?Rid=" +myGUID;
                
    //            MailMessage PassRecMail = new MailMessage();
    //            PassRecMail.From = new MailAddress("ronakvaghasiya@gmail.com");
    //            PassRecMail.To.Add("ronakvaghasiya27@hotmail.com");
    //            PassRecMail.Body = EmailBody;
    //            PassRecMail.IsBodyHtml = true;
    //            PassRecMail.Subject = "Reset Password";

    //            SmtpClient SmtpServer = new SmtpClient("smtp-mail.outlook.com");
    //            //SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
    //             SmtpServer.Port = 587;
    //            SmtpServer.Credentials =new System.Net.NetworkCredential("ronakvaghasiya27@hotmail.com", "r0n4kasds");
                
                
    //            SmtpServer.EnableSsl = true;
    //            SmtpServer.Send(PassRecMail);

    //            lblPassRec.Text = "Check your email to reset your password.";
    //            lblPassRec.ForeColor = Color.Green;
                
    //        }
    //        else
    //        {
    //            lblPassRec.Text = "Oops This email id DOES NOT exist in our database !";
    //            lblPassRec.ForeColor = Color.Red;
    //        }
    //    }
    //}
    //}

    

