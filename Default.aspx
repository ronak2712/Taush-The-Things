<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <section id="main-slider">
				<div id="owl-main-slider" class="enable-owl-carousel owl-main-slider owl-carousel owl-theme" data-navigation="true" data-pagination="false" data-single-item="true" data-auto-play="7000" data-transition-style="fadeUp" data-main-text-animation="true" data-after-init-delay="4000" data-after-move-delay="500" data-stop-on-hover="true">
					<div class="item slide1">
						<img src="images/main-slider/slide-1.jpg" alt="Slide 1">
						<div class="main-slider_content">
							<div class="main-slider_smalltitle main-slider_zoomIn animated" style="visibility: hidden"><span class="customColor">Largest Collection for old item</span></div>
							<h3 class="main-slider_title font-additional font-weight-bold main-slider_fadeInLeft animated" style="visibility: hidden; color:white">List Item To Barter<br> </h3>
							<div class="main-slider_row">
								<div class="line-separator main-slider_zoomIn animated" style="visibility: hidden;">
									<img src="images/seperator.png" alt="seperator">
								</div>
							</div>
							
						</div>
					</div>
					<div class="item slide2">
						<img src="images/main-slider/slide-2.jpg" alt="Slide 2">
						<div class="main-slider_content">
							<div class="main-slider_row">
								<div class="line-separator main-slider_zoomIn animated" style="visibility: hidden;">
									<img src="images/seperator.png" alt="seperator">
								</div>
							</div>
							<div class="main-slider_smalltitle color-main main-slider_fadeInRight animated" style="visibility: hidden;">List what's Wanted</div>
							<h3 class="main-slider_title font-additional font-weight-bold text-shadow color-main main-slider_fadeInLeft animated" style="visibility: hidden;">Find what you like</h3>
							<div class="main-slider_buttons">
							</div>
						</div>
					</div>
					<div class="item slide3">
						<img src="images/main-slider/slide-3.jpg" alt="Slide 3">
						<div class="main-slider_content">
							
							<h3 class="main-slider_title font-additional font-weight-normal text-shadow main-slider_fadeInLeft animated" style="visibility: hidden; padding-bottom:5px;">Make offer And Agree to Barter!</h3>
							<div class="main-slider_row">
								<div class="line-separator main-slider_zoomIn animated" style="visibility: hidden;">
									<img src="images/white-seperator.png" alt="seperator">
								</div>
							</div>
							<span class="main-slider_desc font-main main-slider_fadeInRight animated" style="visibility: hidden;">No one deal done until the final Handshake!</span>
							<div class="main-slider_buttons">
							</div>
						</div>
					</div>
				</div>
			</section>
     <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="row">
                        <h2 class="title text-center" style="margin-top: 20px; margin-bottom: 10px">Category</h2>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                 <a href="CategoryView.aspx?id=1">
                                               <img src="images/home/library-icon.png" alt="" />
                                        <p><b>BOOKS</b></p></a>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                 <a href="CategoryView.aspx?id=10">
                                               <img src="images/home/elect.jpg" alt="" />
                                        <p><b>ELECTRONICS & APPLIANCES</b></p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <a href="CategoryView.aspx?id=2">
                                            <img src="images/home/mobile-icon.jpg" alt="" /></a>

                                        <p><b>MOBILES</b></p>
                                        </a>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <a href="CategoryView.aspx?id=1021">
                                            <img src="images/home/automobile.png" alt="" /></a>

                                        <p><b>AUTOMOBILES</b></p>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/game.jpg" alt="" />

                                        <p><b>GAME CDS</b></p>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/movie.jpg" alt="" />

                                        <p><b>MOVIE CDS</b></p>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/home.jpg" alt="" />

                                        <p><b>REAL ESTATE</b></p>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="images/home/fur.jpg" alt="furniture" />

                                        <p><b>FURNITURE</b></p>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-4" >
                    <div class="row">
                       <div class="col-sm-12">
                           <div style="margin:60px 0 0 9%">
                                <span style="font-size: 20pt;">It's Easy to Swap, Trade and Barter for What you Want!</span>
                               <br />
                               <br />
                               <span style="font-size: 14pt;">
                                   <img alt="" height="30" src="images/1B.png" style="vertical-align: middle;" width="32">
                              <a href="login.aspx">Register</a> on Tausch.com 
                                    </span>
                               <br /><br />
                                <span style="font-size: 14pt;">
                                   <img alt="" height="30" src="images/2B.png" style="vertical-align: middle;" width="32">
                              Post your items & list what you want 
                                    </span>
                                <br /><br />
                                <span style="font-size: 14pt;">
                                  <img alt="" height="30" src="images/3B.png" style="vertical-align: middle;" width="32">
                                    Search items posted for trade</span>
                               <br /><br />
                                <span style="font-size: 14pt;">
                                  <img alt="" height="30" src="images/4B.png" style="vertical-align: middle;" width="32">
                                    Make an offer!</span>

                </div></div>
                        </div>
                    </div>
            </div>
            <!--features_items-->

            <!--category-tab-->

            <!--/category-tab-->



        </div>

    </section>

</asp:Content>

