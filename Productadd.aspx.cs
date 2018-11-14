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


public partial class Productadd : System.Web.UI.Page
{
    string rid;
    String Aid;
    protected void Page_Load(object sender, EventArgs e)
    {
        rid = Convert.ToString(Session["Rid"]);
        if (rid == "")
        {
            Response.Redirect("login.aspx");
        }
        String CS = ConfigurationManager.ConnectionStrings["SwapshopConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select Aid from Address where Rid = '" + rid + "' ", con);
        cmd2.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Aid = dt.Rows[0][0].ToString();
        }
    }
    protected void btnpp_Click(object sender, EventArgs e)
    { 
        string path=Server.MapPath("~/Upload/");
        string path2 = Server.MapPath("~/Upload/Video/");
        if (fuimg.HasFile & fuimg2.HasFile & fuimg3.HasFile)
                    {
                    string ext = Path.GetExtension(fuimg.FileName);
                    string ext2 = Path.GetExtension(fuimg2.FileName);
                    string ext3 = Path.GetExtension(fuimg2.FileName);
                    //string ext4 = Path.GetExtension(Fuvideo.FileName);
                    //decimal size = Math.Round(((decimal)Fuvideo.PostedFile.ContentLength / (decimal)1024), 2);

                    if (ext == ".jpe" || ext == ".png" || ext == ".jpg" || ext2 == ".jpe" || ext2 == ".png" || ext2 == ".jpg" || ext3 == ".jpe" || ext3 == ".png" || ext3 == ".jpg")
                    {
                        //if (ext4 == ".mp4")
                        //{
                        //    if (size < 10000)
                        //    {
                                fuimg.SaveAs(path + fuimg.FileName);
                                fuimg2.SaveAs(path + fuimg2.FileName);
                                fuimg3.SaveAs(path + fuimg3.FileName);
                                //Fuvideo.SaveAs(path2 + Fuvideo.FileName);
                                string img1 = "~/Upload/" + fuimg.FileName;
                                string img2 = "~/Upload/" + fuimg2.FileName;
                                string img3 = "~/Upload/" + fuimg3.FileName;
                                //string video = "Upload/Video/" + Fuvideo.FileName;
                                String CS = ConfigurationManager.ConnectionStrings["SwapshopConnectionString"].ConnectionString;
                                SqlConnection con = new SqlConnection(CS);
                                con.Open();
                                SqlCommand cmd = new SqlCommand("insert into Product" + 
                                    "(Rid,Aid,Title,Price,Quantity,NeedProduct,Img1,sid,Img2,Img3,Video,NpDescription,Npsubcat) values(@Rid,@Aid,@Name,@price,@quntity,@NeedProduct,@Img1,@sid,@img2,@img3,@video,@NpDescription,@Npsubcat)", con);
                                cmd.Parameters.AddWithValue("@Name", tbTitle.Text);
                                cmd.Parameters.AddWithValue("@Aid", Aid);
                                cmd.Parameters.AddWithValue("@Rid", rid);
                                cmd.Parameters.AddWithValue("@price", tbPrice.Text);
                                cmd.Parameters.AddWithValue("@quntity", tbQuantity.Text);
                                cmd.Parameters.AddWithValue("@NeedProduct", tbNeed.Text);
                                cmd.Parameters.AddWithValue("@NpDescription", TextBox1.Text);
                                cmd.Parameters.AddWithValue("@Img1", img1);
                                cmd.Parameters.AddWithValue("@Img2", img2);
                                cmd.Parameters.AddWithValue("@Img3", img3);
                                //cmd.Parameters.AddWithValue("@Video", video);
                                cmd.Parameters.AddWithValue("@sid", drpsubcat.SelectedValue);
                                cmd.Parameters.AddWithValue("@Npsubcat", DropDownList1.SelectedValue);
                                cmd.Parameters.AddWithValue("@CatId", drpcat.SelectedValue);
                                cmd.ExecuteNonQuery();
                                con.Close();
                                lblmsg.ForeColor = Color.Green;
                                lblmsg.Text = "your product succsefully uploaded";
                            //}
                        //    else
                        //    {
                        //        lblmsg.ForeColor = Color.Red;

                        //        lblmsg.Text = "Please Upload lessthen 10 mb file";
                        //    }
                        //}

                        //else
                        //{
                        //    lblmsg.ForeColor = Color.Red;

                        //    lblmsg.Text = "Please Upload Mp4 File";
                        //}
                    }
                    else
                    {
                        lblmsg.ForeColor = Color.Red;
                        lblmsg.Text = "Plese insert jpeg or png or jpe file";
                    }

                    }
                        else
                        {
                            lblmsg.ForeColor = Color.Red;
                             lblmsg.Text="Please upload Photos and video file!!";
            
                        }

                    }
   
}

