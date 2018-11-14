<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductDetailsView.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Pid" DataSourceID="SqlDataSource1" Width="1349px">
        <EditItemTemplate>
           
        </EditItemTemplate>
        <InsertItemTemplate>
           
        </InsertItemTemplate>
        <ItemTemplate>
       <section id="pageTitleBox" class="paralax breadcrumb-container" style="background-image: url('images/detail-heading-bg.jpg');">
				<div class="container">
               			<h1 class="title font-additional font-weight-normal color-main text-uppercase wow zoomIn animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: zoomIn;">
                               <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>'></asp:Label></h1>
					<ul class="breadcrumb-list">
						<li>
							<a href="Default.aspx?Rid=<%=rid %>" class="font-additional font-weight-normal color-main text-uppercase">HOME </a>
							<span><i class="fa fa-angle-double-right"></i></span>
						</li>
						<li>
							<a href="CategoryView.aspx?id=<%#Eval("CatId") %>" class="font-additional font-weight-normal color-main text-uppercase">
                                <asp:Label ID="Label9" runat="server" Text='<%#Eval("Name")%>'></asp:Label>  </a>
							<span><i class="fa fa-angle-double-right"></i></span>
						</li>
                         <li>
							<a href="CategoryView.aspx?id=<%#Eval("Sid") %>" class="font-additional font-weight-normal color-main text-uppercase">
                                <asp:Label ID="Label10" runat="server" Text='<%#Eval("SName")%>'></asp:Label>  </a>
							<span><i class="fa fa-angle-double-right"></i></span>
						</li>					</ul>
				</div>
			</section>

              <section id="Section1" class="product-details">
				<div class="container">
              
					<div class="row">
						<div class="product-gallery  col-lg-6 col-md-5 col-sm-8 col-xs-12   clearfix" style="padding:30px">
							<ul class="bxslider" data-mode="fade" data-slide-margin="0" data-min-slides="1" data-move-slides="1" data-pager="true" data-pager-custom="#bx-pager" data-controls="false">
								<li><asp:Image ID="Image1" runat="server" Width="570px" Height="400px" style="border-radius:20px" ImageUrl='<%# Eval("Img1") %>'  /></li>
                                 <li><asp:Image ID="Image2" runat="server" Width="570px" Height="400px" style="border-radius:20px" ImageUrl='<%# Eval("Img2") %>' /></li>
                                <li><asp:Image ID="Image3" runat="server" Width="570px" Height="400px" style="border-radius:20px" ImageUrl='<%# Eval("Img3") %>' /></li>
                                </ul>
                            <div id="bx-pager" class="product-gallery_preview">
								<a data-slide-index="0" href="#"><asp:Image ID="Image4" style="border-radius:10px" runat="server" ImageUrl='<%# Eval("Img1") %>' /></a>
								<a data-slide-index="1" href="#"><asp:Image ID="Image5" style="border-radius:10px" runat="server" ImageUrl='<%# Eval("Img2") %>' /></a>
								<a data-slide-index="2" href="#"><asp:Image ID="Image6" style="border-radius:10px" runat="server" ImageUrl='<%# Eval("Img3") %>' /></a>
							</div>
                           <div class="row">
                               
                            </div>
						</div>
                       
                         <div class="sidebar col-lg-1 col-md-2 col-sm-4 " style="float:right"></div>
          
						<div class="product-cart col-lg-5 col-md-5 col-sm-12 col-xs-12 clearfix">
              <div class="product-options_header clearfix wow fadeIn" data-wow-delay="0.3s">
                              </h1>
                <h3 class="font-additional font-weight-bold text-uppercase"> <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title") %>'></asp:Label></h3>
                <div class="product-item_price font-additional font-weight-normal customColor clearfix wow fadeIn"data-wow-delay="0.3s">Approximate price:<span><asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label></span></div>
                
                  <div class="product-options_desc font-main color-third">
                      <asp:Label ID="Label13" runat="server" Text='<%#Eval("NpDescription") %>'></asp:Label></div>
               
              </div>
                <div class="product-options_body clearfix wow fadeIn" data-wow-delay="0.4s">
                <h5 class="font-additional font-weight-bold text-uppercase">REQUIRE PRODUCT:<asp:Label ID="Label4" runat="server" Text='<%# Eval("NeedProduct") %>'></asp:Label></h5>
                <h4  class="font-additional font-weight-bold text-uppercase">Subcategory:<asp:Label ID="Label12" runat="server" Text='<%# Eval("NpSubcat") %>'></asp:Label></h4>
                    <div class="product-options_desc font-main color-third">
                    <asp:Label ID="Label11" runat="server" Text='<%#Eval("NpDescription") %>'></asp:Label></div>
              </div>
              <div class="product-options_body clearfix wow fadeIn" data-wow-delay="0.5s">

                    <ul>
                   
                    <li>Owner Name: <asp:Label ID="lblUN" runat="server" Text='<%# Eval("RName") %>'></asp:Label></li>
                    <li>Mobile Number:<asp:Label ID="Label3" runat="server" Text='<%# Eval("RMobile") %>'></asp:Label></li>
                    <li>Area Name: <asp:Label ID="Label5" runat="server" CssClass="text-uppercase" Text='<%# Eval("District") %>'></asp:Label>
                     <li><asp:Label ID="Label7" runat="server" CssClass="text-uppercase" Text='<%# Eval("CName") %>'></asp:Label>
                         -
                         <asp:Label ID="Label6" runat="server" CssClass="text-uppercase" Text='<%# Eval("Pincode") %>'></asp:Label></li>
					
                    <li><asp:Label ID="Label8" runat="server" CssClass="text-uppercase" Text='<%# Eval("StName") %>'></asp:Label></li>
                </ul>
              </div>
                             
           <div class="product-options_cart clearfix wow fadeIn" data-wow-delay="0.5s">
                
                <div class="product-options_row">
                  <a href="myaccount/Message.aspx?Rid=<%=rid %> &ToRid=<%=TORid %>" target="_blank" class="btn button-additional button-big font-additional font-weight-normal text-uppercase hvr-bounce-to-right before-bg">
                    <span class="icon-basket" aria-hidden="true"></span>
                    Send Message
                  </a>
                 
                </div>
               </div>
              <div class="product-options_footer clearfix wow fadeIn" data-wow-delay="0.3s">
                <div class="product-options_row">
                  <h4 class="font-additional font-weight-bold text-uppercase">Share this product</h4>
                  <ul class="social-list">
                    <li><a href="#" class="hover-focus-border hover-focus-bg hvr-rectangle-out before-bg"><span class="social_facebook" aria-hidden="true"></span></a></li>
                    <li><a href="#" class="hover-focus-border hover-focus-bg hvr-rectangle-out before-bg"><span class="social_twitter" aria-hidden="true"></span></a></li>
                    <li><a href="#" class="hover-focus-border hover-focus-bg hvr-rectangle-out before-bg"><span class="social_googleplus" aria-hidden="true"></span></a></li>
                    <li><a href="#" class="hover-focus-border hover-focus-bg hvr-rectangle-out before-bg"><span class="social_pinterest" aria-hidden="true"></span></a></li>
                    <li><a href="#" class="hover-focus-border hover-focus-bg hvr-rectangle-out before-bg"><span class="social_instagram" aria-hidden="true"></span></a></li>
                  </ul>
                </div>
              </div>
            </div>  
                        
                       
				</div>
			</section>
           
        </ItemTemplate>
        </asp:FormView> 

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SwapshopConnectionString %>"></asp:SqlDataSource>
<script type = "text/javascript">
    function Confirm() {
        var confirm_value = document.createElement("INPUT");
        confirm_value.type = "hidden";
        confirm_value.name = "confirm_value";
        if (confirm("Do you want to delete Add?")) {
            confirm_value.value = "Yes";
        }
        else {
            confirm_value.value = "No";
        }
        document.forms[0].appendChild(confirm_value);
    }
    </script>


</asp:Content>



<%--  Pid:
            <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
            <br />
            Rid:
            <asp:Label ID="RidLabel" runat="server" Text='<%# Bind("Rid") %>' />
            <br />
            Sid:
            <asp:Label ID="SidLabel" runat="server" Text='<%# Bind("Sid") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Quantity:
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            Date:
            <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            NeedProduct:
            <asp:Label ID="NeedProductLabel" runat="server" Text='<%# Bind("NeedProduct") %>' />
            <br />
            Aid:
            <asp:Label ID="AidLabel" runat="server" Text='<%# Bind("Aid") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Img1:
            <asp:Label ID="Img1Label" runat="server" Text='<%# Bind("Img1") %>' />
            <br />--%>

