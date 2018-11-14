using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public String Rid;
    public string rid = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.rid = Convert.ToString(Session["Rid"]);
        if (rid !="")
        {
            HyperLink1.Visible = false;

        }
        else
        {
            Label1.Visible = false;
            Label3.Visible = false;
        }
        this.Rid = Request.QueryString["Rid"];

        SqlDataSource1.SelectCommand=" select Sid,SName from Subcategory where Catid = 1 ";
        SqlDataSource2.SelectCommand = " select Sid,SName from Subcategory where Catid = 10 ";
        SqlDataSource3.SelectCommand = " select Sid,SName from Subcategory where Catid = 2 ";
        SqlDataSource4.SelectCommand = " select Sid,SName from Subcategory where Catid = 1021 ";
        SqlDataSource5.SelectCommand = " select Sid,SName from Subcategory where Catid = 1013 ";
        SqlDataSource6.SelectCommand = " select Sid,SName from Subcategory where Catid = 1016 ";
        SqlDataSource8.SelectCommand = "select  top 4 * from Message m INNER JOIN Registration r on m.Rid = r.Rid where TORid='" + Rid + "'  ORDER BY m.Date DESC";
       // SqlDataSource9.SelectCommand = "SELECT  * FROM Product a  INNER JOIN Subcategory b  ON a.Sid = b.Sid  INNER JOIN Category c ON b.CatId = c.CatId";

    
    }


    //protected void searchQuery_TextChanged(object sender, EventArgs e)
    //{
    //    Response.Redirect("Search.aspx?text="+searchQuery.Text+"");
    //}
}
