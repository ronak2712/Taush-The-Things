using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    public string rid;
    public string TORid;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.rid = Convert.ToString(Session["Rid"]);
        if (rid == "")
        {
            Response.Redirect("login.aspx");
        }
        string Pid = Request.QueryString["Pid"];
        //SqlDataSource1.SelectCommand = "select * from Product where Pid= '" + Pid + "' ";
        SqlDataSource1.SelectCommand = "SELECT  *FROM    Product a INNER JOIN Registration d on a.Rid=d.Rid INNER JOIN Subcategory b  ON a.Sid = b.Sid  INNER JOIN Category c ON b.CatId = c.CatId INNER JOIN Address e ON a.Aid = e.Aid INNER JOIN PinCode f ON e.PCid= f.PCid INNER JOIN City_Master g ON f.Cid=g.Cid  INNER JOIN  State_Master h ON g.Sid=h.Sid WHERE a.Pid='" + Pid + "' ";

        String CS = ConfigurationManager.ConnectionStrings["SwapshopConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT  *FROM    Product a INNER JOIN Registration d on a.Rid=d.Rid INNER JOIN Subcategory b  ON a.Sid = b.Sid  INNER JOIN Category c ON b.CatId = c.CatId INNER JOIN Address e ON a.Aid = e.Aid INNER JOIN PinCode f ON e.PCid= f.PCid INNER JOIN City_Master g ON f.Cid=g.Cid  INNER JOIN  State_Master h ON g.Sid=h.Sid WHERE a.Pid='" + Pid + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                this.TORid = dt.Rows[0][1].ToString();
              

            }
            else
            {


            }


        }
    }
}