using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;

namespace Demo
{
    public class Product
    {
        public int  Pid { get; set; }
        public int Rid { get; set; }
        public int Sid { get; set; }
        public int Aid { get; set; }
        public string Name { get; set; }
        public string Price { get; set; }
        public int Quantity{ get; set; }
        public string NeedProduct { get; set; }
        public string Description { get; set; }
        public string Img1 { get; set; }
        public string Date { get; set; }
    }

    public class ProductDataAccessLayer
    {
        public static List<Product> GetAllProducts()
        {
            List<Product> listProducts= new List<Product>();

            string CS = ConfigurationManager.ConnectionStrings["SwapshopConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Select * from Product", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Product Product = new Product();
                    Product.Pid = Convert.ToInt32(rdr["Pid"]);
                    Product.Rid = Convert.ToInt32(rdr["Rid"]);
                    Product.Sid = Convert.ToInt32(rdr["Sid"]);
                    Product.Aid = Convert.ToInt32(rdr["Aid"]);
                    Product.Name = rdr["Name"].ToString();
                    Product.Price = rdr["Price"].ToString();
                    Product.Quantity = Convert.ToInt32(rdr["Quantity"]);
                    Product.NeedProduct = rdr["NeedProduct"].ToString();
                    Product.Description = rdr["Description"].ToString();
                    Product.Date = rdr["Date"].ToString();
                    Product.Img1 = rdr["Img1"].ToString();

                    listProducts.Add(Product);
                }
            }

            return listProducts;
        }
    }
}
