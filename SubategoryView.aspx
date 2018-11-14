<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SubategoryView.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container relative">

        <div class="isotopeBox">
            <%--<h2 class="title font-additional font-weight-bold text-uppercase wow fadeInUp" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-name: fadeInUp;">BEST SELLERS</h2>
						<span class="subTitle font-additional font-weight-normal text-uppercase wow fadeIn" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-name: fadeIn;">NEW ARRIVAL / TRENDY COLLECTION</span>--%>
           
             <div class="line-seperatorBox clearfix">
                <div class="isotope-frame">                  
                            <div class="isotope-filter isotope" style="position: relative; overflow: hidden; height: 926px;">
                                  <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                   <ItemTemplate>
                                <div class="isotope-item  newproducts discount">
                                    <div class="product-item hvr-underline-from-center">
                                        <div class="product-item_body">
                                          <asp:Image ID="Image1" CssClass="product-item_image" Width="250px" Height="247px" runat="server" ImageUrl='<%# Eval("Img1") %>' />
                                            <a class="product-item_link" href="ProductDetailsView.aspx?Pid=<%#Eval("Pid") %>"></a>
                                            <div class="product-sidebar">

                                                <p class="quick fa fa-tags">
                                                    <span><asp:Label ID="SidLabel" runat="server" Text='<%# Eval("SName") %>' /></span>
                                                </p>
                                                <p>
                                                    <i class="quick fa fa-inr"></i>
                                                    <span> <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' /></span>
                                                </p>
                                                <p class="fa fa-location-arrow">
                                                    <span><asp:Label ID="AidLabel" runat="server" Text='<%# Eval("Aid") %>' /></span>
                                                </p>
                                                 <a href="ProductDetailsView.aspx?Pid=<%#Eval("Pid") %>" class="info">
                                                    <span>QUICK VIEW</span>
                                                </a>
                                            </div>
                                        </div>
                                         <a href="ProductDetailsView.aspx?Pid=<%#Eval("Pid") %>" class="product-item_footer">
                                            <div class="product-item_title font-additional font-weight-bold text-center text-uppercase"> <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Title") %>' /></div>
                                            <div class="product-item_price font-additional font-weight-normal customColor">REQUIRE: <asp:Label ID="NeedProductLabel" runat="server" Text='<%# Eval("NeedProduct") %>' /> </div>

                                        </a>
                                  </div>
                                </div>

                                       
  
                     
                               </ItemTemplate>
                    </asp:Repeater>
                            </div>                   

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SwapshopConnectionString %>" SelectCommand="SELECT * FROM [Product ],[Subcategory] where Product.Sid=Subcategory.Sid"></asp:SqlDataSource>
                    
                </div>
            </div>
        </div>
    </div>

  
</asp:Content>

