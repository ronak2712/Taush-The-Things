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
public partial class Admin_City : System.Web.UI.Page
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
        GridView1.HeaderRow.Cells[2].Attributes["data-hide"] = "phone";
        GridView1.HeaderRow.Cells[3].Attributes["data-hide"] = "phone";

        //Adds THEAD and TBODY to GridView.
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;

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

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        if (tbcname.Text != "" )
        {
            {
                String CS = ConfigurationManager.ConnectionStrings["SwapshopConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into City_Master" + "(CName,Sid) values(@CName,@State)", con);
                    cmd.Parameters.AddWithValue("@CName", tbcname.Text);
                    cmd.Parameters.AddWithValue("@State", DropDownList1.Text);
               
                    cmd.ExecuteNonQuery();
                    Response.Redirect("City.aspx");
                }
            }
        }
        else
        {
            lblmsg2.ForeColor = Color.Red;
            lblmsg2.Text = "All Fields Are Mandator";
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        tbcname.Text= string.Empty;
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (!string.IsNullOrEmpty(txtsearch.Text))
        {
            msg.ForeColor = Color.Green;
            msg.Text = "Found " + GridView1.Rows.Count +
                " rows matching keyword '" + txtsearch.Text + "'.";
        }
    }
    protected void btnshowall_Click(object sender, EventArgs e)
    {
        Response.Redirect("City.aspx");
    }
}