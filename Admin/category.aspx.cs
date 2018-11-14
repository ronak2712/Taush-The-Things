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


public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] == null)
        {
            Response.Redirect("Adminlogin.aspx");
        }
        

        //Attribute to show the Plus Minus Button.
        GridView1.HeaderRow.Cells[0].Attributes["data-class"] = "expand";

        //Attribute to hide column in Phone.
        GridView1.HeaderRow.Cells[1].Attributes["data-hide"] = "phone";
        GridView1.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";

        //Adds THEAD and TBODY to GridView.
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;

    }
   
        protected void Insert_Click(object sender, EventArgs e)
{       if (Name.Text != "" & Description.Text != "")
        {
            {
                String CS = ConfigurationManager.ConnectionStrings["SwapshopConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into Category" + "(Name,Description) values(@Name,@Description)", con);
                    cmd.Parameters.AddWithValue("@Name", Name.Text);
                    cmd.Parameters.AddWithValue("@Description", Description.Text);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Category.aspx");
                }
            }
        }
        else
        {
            lblmsg.ForeColor = Color.Red;
            lblmsg.Text = "All Fields Are Mandator";
        }

}

    
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Name.Text = string.Empty;
        Description.Text = string.Empty;
        lblmsg.Text = string.Empty;
    }
    protected void chkadd_CheckedChanged(object sender, EventArgs e)
    {
        if (pnlinsert.Visible == true)
        {
            pnlinsert.Visible = false;
        }
        else
        {
            pnlinsert.Visible = true;
        }
    }

    protected void SqlDataSource1_Deleting(object sender, SqlDataSourceCommandEventArgs e)
    {

    }


    protected void btnshowall_Click(object sender, EventArgs e)
    {
        Response.Redirect("category.aspx");
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (!string.IsNullOrEmpty(txtsearch.Text))
        {
            
            msg.Text = "Found " + GridView1.Rows.Count +
                " rows matching keyword '" + txtsearch.Text + "'.";
        }
       

    }
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {

    }
}
