using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;


public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (tbName.Text != "" & tbEmail.Text != "" && tbmobile.Text != "")
        {
            String CS = ConfigurationManager.ConnectionStrings["SwapshopConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into ContactUs" + "(CUName,CUEmail,CUMobile,CUSubject,CUMsg) values(@RegName,@RegEmail,@RegMobile,@RegSubject,@Msg)", con);
                cmd.Parameters.AddWithValue("@RegName", tbName.Text);
                cmd.Parameters.AddWithValue("@RegMobile", tbmobile.Text);
                cmd.Parameters.AddWithValue("@RegEmail", tbEmail.Text);
                cmd.Parameters.AddWithValue("@RegSubject", tbSub.Text);
                cmd.Parameters.AddWithValue("@Msg", tbmsg.Text);
                cmd.ExecuteNonQuery();

               
                lblmsg.ForeColor = Color.Green;
                lblmsg.Text = "Your details successfully submitted.";
            }
        }
        else
        {
            lblmsg.ForeColor = Color.Red;
            lblmsg.Text = "Name,Mobile and Email must require";

        }
    }
}