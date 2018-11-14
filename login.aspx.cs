using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["Rid"] = "";
            if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null && Request.Cookies["Rid"]!=null)
            {
                TextBox1.Text = Request.Cookies["UNAME"].Value;
                TextBox2.Attributes["value"] = Request.Cookies["PWD"].Value;
                CheckBox1.Checked = true;
                Session["Rid"] = Request.Cookies["Rid"].Value;
                Response.Redirect("Default.aspx?Rid=" +Request.Cookies["Rid"].Value);
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (TextBox1.Text != "" & TextBox2.Text != "")
        {
            String CS = ConfigurationManager.ConnectionStrings["SwapshopConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select RPassword,Rid from Registration where RPassword=@RegPassword and REmail=@RegEmail", con);
                cmd.Parameters.AddWithValue("@RegEmail", TextBox1.Text);
                cmd.Parameters.AddWithValue("@RegPassword", TextBox2.Text);
             
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    string Rid = dt.Rows[0][1].ToString();
                    if ((CheckBox1.Checked == true))
                    {
                        Response.Cookies["Email"].Value = TextBox1.Text;
                        Response.Cookies["PWD"].Value = TextBox2.Text;
                        Response.Cookies["Rid"].Value = Rid;

                        Response.Cookies["Email"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["Rid"].Expires = DateTime.Now.AddDays(15);
                    }
                    else
                    {
                        Response.Cookies["Email"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["Email"].Expires = DateTime.Now.AddDays(-1);
                    }
                    Session["Rid"] =Rid;
                    Response.Redirect("Default.aspx?Rid="+ Session["Rid"].ToString());


                }
                else
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Invelid username & password";
                }
                con.Close();
            }
        }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = " All field must Required";
        }

    }
    protected void lbforgot_Click(object sender, EventArgs e)
    {

    }
}