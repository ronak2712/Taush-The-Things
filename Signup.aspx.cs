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
using System.Drawing;



public partial class Signup : System.Web.UI.Page
{
    string s = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            if (tbName.Text != "" & tbPass.Text != "" && tbMob.Text != "" && tbEmail.Text != "")
            {
                if (tbPass.Text == tbRepaas.Text)
                {
                    if (cbsignup.Checked)
                    {
                        
                        
                        String CS = ConfigurationManager.ConnectionStrings["SwapshopConnectionString"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(CS))
                        {
                            con.Open();
                            SqlCommand cmd = new SqlCommand("insert into Registration" + "(RName,REmail,RMobile,RPassword) values(@RegName,@RegEmail,@RegMobile,@RegPassword)", con);
                            cmd.Parameters.AddWithValue("@RegName", tbName.Text);
                            cmd.Parameters.AddWithValue("@RegMobile", tbMob.Text);
                            cmd.Parameters.AddWithValue("@RegEmail", tbEmail.Text);
                            cmd.Parameters.AddWithValue("@RegPassword", tbPass.Text);
                            cmd.ExecuteNonQuery();
                            lblMsg.Text = "Registration Successfull";
                            Response.Redirect("AddressUser.aspx?Email=" + tbEmail.Text + "&Name=" + tbName.Text);
                            s = "2";
                        }
                        if (s != "2")
                        {
                            lblMsg.Text = "Your Email id Or Mobile is already Use!!";
                        }
                    }
                    else
                    {
                        lblMsg.ForeColor = Color.Red;
                        lblMsg.Text = "Please agree on Term & condition!!";
                    }
                }
                else
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Passwords do not match!!";
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "All Fields Are Mandatory!!";

            }
        }
       
    }
    

}