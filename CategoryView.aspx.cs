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
        SqlDataSource1.SelectCommand = "SELECT  *FROM    Product a  INNER JOIN Subcategory b  ON a.Sid = b.Sid  INNER JOIN Category c ON b.CatId = c.CatId INNER JOIN Address e ON a.Aid = e.Aid INNER JOIN PinCode f ON e.PCid= f.PCid INNER JOIN City_Master g ON f.Cid=g.Cid WHERE   c.Catid='" + id + "' ";
       
            

    }
}