using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string text =  Request.QueryString["text"];
        string city = Request.QueryString["filterby"];

        SqlDataSource1.SelectCommand = "SELECT  *FROM    Product a  INNER JOIN Subcategory b  ON a.Sid = b.Sid  INNER JOIN Category c ON b.CatId = c.CatId INNER JOIN Address e ON a.Aid = e.Aid INNER JOIN PinCode f ON e.PCid= f.PCid INNER JOIN City_Master g ON f.Cid=g.Cid where (g.Cid='" + city + "') and (a.Title like '%" + text + "%' or a.NeedProduct like '%" + text + "%' or b.SName like '%" + text + "%' or c.Name like '%" + text + "%' or g.CName like '%" + text + "%')";

    }

}