<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<div class="container">
    <div style="font-size: 20px;font-weight: bold;margin: 25px 0 0 320px;">
    <asp:Label ID="lblSuccess" runat="server" ></asp:Label>
     </div>
    <div class="row" style="margin-top:100px; margin-bottom:100px; margin-left:100px;">
       <div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="category.aspx"><img src="images/category.jpg" alt=""/></a>
											<p><b>Category Data</b></p>
										</div>										
								</div>
							</div>
						</div>
         <div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="subcategory.aspx"><img src="images/subcategory.png" alt=""/></a>
											<p><b>Subcategory Data</b></p>
										</div>										
								</div>
							</div>
						</div>
         <div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="Manageuser.aspx"><img src="images/user.png" alt=""/></a>
											<p><b>User Data</b></p>
										</div>										
								</div>
							</div>
						</div>
         <div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<a href="ManageProduct.aspx"><img src="images/product.jpg" alt=""/></a>
											<p><b>User Products Post</b></p>
										</div>										
								</div>
							</div>
						</div>

        </div>
    </div>
 </div>

</asp:Content>
  