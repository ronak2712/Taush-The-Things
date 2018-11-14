using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        SqlDataSource1.SelectCommand = "SELECT  *FROM    Product a  INNER JOIN Subcategory b  ON a.Sid = b.Sid  INNER JOIN Category c ON b.CatId = c.CatId WHERE   a.Sid='" + id +"' ";
       
            

    }
}