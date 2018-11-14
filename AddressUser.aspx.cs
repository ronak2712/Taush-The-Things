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

public partial class AddressUser : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["SwapshopConnectionString"].ConnectionString;
    String Rid;
    protected void Page_Load(object sender, EventArgs e)
    {
        string Email = Request.QueryString["Email"];
        string Name = Request.QueryString["Name"];
        
        if (Email != null)
        {
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select Rid from Registration where REmail = '" + Email+ "' and RName= '"+ Name +"'", con);
            cmd2.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Rid = dt.Rows[0][0].ToString();
                         
            
            con.Close();
        }
    }
    protected void btnpp_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(CS);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Address" + "(Line1,line2,District,PCid,Rid) values(@Line1,@line2,@District,@PCid,@Rid)", con);
        cmd.Parameters.AddWithValue("@Line1",tbln1.Text);
        cmd.Parameters.AddWithValue("@line2",tbln2.Text);
        cmd.Parameters.AddWithValue("@District",tblm.Text);
        cmd.Parameters.AddWithValue("@PCid",drppc.SelectedValue);
        cmd.Parameters.AddWithValue("@Rid", Rid);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Default.aspx?Rid=" + Rid);
    }
}