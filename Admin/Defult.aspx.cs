using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Drawing;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=R0N4K;Initial Catalog=Swapshop;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
            {
                TextBox1.Text = Request.Cookies["UNAME"].Value;
                TextBox2.Attributes["value"] = Request.Cookies["PWD"].Value;
                CheckBox1.Checked = true;
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       if (TextBox1.Text != "" & TextBox2.Text != "")
        {  
        con.Open();
        SqlCommand cmd = new SqlCommand("select APassword from admin where APassword=@Password and AEmail=@Email", con);
        cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["UNAME"].Value = TextBox1.Text;
                Response.Cookies["PWD"].Value = TextBox2.Text;

                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
            }
            else
            {
                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
            }
            Session["USERNAME"] = TextBox1.Text;
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "Invelid username & password";
        }
        con.Close();
                }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All Fields Are Mandatory";

        }

    }
}