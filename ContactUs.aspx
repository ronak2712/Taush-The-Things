<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="pageTitleBox" class="paralax breadcrumb-container"  style="background-image: url('images/contact-heading-bg.jpg');">
				<!-- <div class="overlay"></div> -->
				<div class="container relative">
					<h1 class="title font-additional font-weight-normal color-main text-uppercase wow zoomIn" data-wow-delay="0.3s">CONTACT US</h1>
					<ul class="breadcrumb-list wow zoomIn" data-wow-delay="0.3s">
						<li>
							<a href="Default.aspx" class="font-additional font-weight-normal color-main text-uppercase">HOME</a>
							<span><i class="fa fa-angle-double-right"></i></span>
						</li>
						<li>
							<a href="ContactUs.aspx" class="font-additional font-weight-normal color-main text-uppercase">CONTACT</a>							
						</li>						
					</ul>
				</div>
			</section>
    
      <!-- Map -->
      <div class="container-fluid map-container margin-top">
          <div class="row map wow fadeIn" data-wow-delay="1s" data-wow-duration="2s" data-wow-offset="200">
               <div id="map-canvas">
                 <h1 class="sr-only">Map</h1>
               </div>
          </div>
      </div>
          <!-- Map -->
    
      <section id="contact-us">
        <div class="container">
          <div class="row">
            <div class="col-sm-4">
              <div class="col-sm-12 address-info">
                <h3 class="font-additional font-weight-bold text-uppercase">Contact</h3>
                <div class="row">
                  <div class="col-sm-1 info-icon">
                    <p>
                      <i class="fa fa-map-marker"></i>
                    </p>
                  </div>
                  <div class="col-sm-9 info-text address-text">
                    <p>
                      Ahmedabad
                    </p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-1 info-icon">
                    <p>
                      <i class="fa fa-phone"></i>
                    </p>
                  </div>
                  <div class="col-sm-9 info-text">
                    <p>
                     +91 7405385122
                    </p>
                    <p>
                      +91 8128028744
                    </p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-1 info-icon">
                    <p>
                      <i class="fa fa-envelope"></i>
                    </p>
                  </div>
                  <div class="col-sm-9 info-text">
                    <p>
                      Ronak@mail.com 
                    </p>
                    <p>
                    Krunal@mail.com 
                    </p>
                      <p>
                      Mayur@mail.com 
                    </p>
                  </div>
                </div>                
              </div>
              <div id="social-contact" class="col-sm-12">
                <h3 class="font-additional font-weight-bold text-uppercase">Follow us</h3>
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-google-plus"></i></a>                  
              </div>  
            </div>
            <div class="col-sm-8">
              <div class="contact-form">
                <h3 class="font-additional font-weight-bold text-uppercase">Message</h3>
                  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                   <form id="contactForm" class="message-form form-inline">
                  <div class="form-group half-wigth pull-left">
                    <label class="sr-only" for="user-name">NAME</label>
                       <asp:TextBox ID="tbName" CssClass="message-field font-additional font-weight-normal color-third text-uppercase" runat="server" placeholder="NAME" ></asp:TextBox>
               
                  </div>
                  <div class="form-group half-wigth pull-right">
                    <label class="sr-only" for="user-email">EMAIL</label>
                 <asp:TextBox ID="tbEmail" CssClass="message-field font-additional font-weight-normal color-third text-uppercase" runat="server" placeholder="EMAIL" TextMode="Email" ></asp:TextBox>
                  </div>
                      <div class="form-group half-wigth pull-left">
                    <label class="sr-only" for="user-name">Mobile</label>
                       <asp:TextBox ID="tbmobile" CssClass="message-field font-additional font-weight-normal color-third text-uppercase" runat="server" placeholder="MOBILE" ></asp:TextBox>
               
                  </div>
                  <div class="form-group half-wigth pull-right">
                    <label class="sr-only" for="user-email">Subject</label>
                 <asp:TextBox ID="tbSub" CssClass="message-field font-additional font-weight-normal color-third text-uppercase" runat="server" placeholder="Sub" ></asp:TextBox>
                  </div>
                  <div class="form-group full-width pull-left" spellcheck="true">
                    <label class="sr-only" for="user-message">Message</label>
                     <asp:TextBox ID="tbmsg" CssClass="message-field font-additional font-weight-normal color-third text-uppercase" TextMode="MultiLine" Rows="5"  runat="server" placeholder="MASSAGE" ></asp:TextBox>
                  </div>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Insert a valid mobile number!!" ControlToValidate="tbmobile" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>

          <asp:Button ID="Button1" cssClass="btn btn-primary font-additional hvr-bounce-to-right before-bg" runat="server" Text="Send Message" OnClick="Button1_Click" />
                  <%--<button type="submit" class="btn send-button font-additional font-weight-normal btn-block hvr-bounce-to-right hover-focus-border before-bg">Send Message</button>--%>
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>

                     </form>
              </ContentTemplate>
                  </asp:UpdatePanel>
                          </div>  
            </div>
          </div>
        </div>
      </section>
    <script
src="http://maps.googleapis.com/maps/api/js">
</script>


    <script>

        /* Map */
        var myCenter = new google.maps.LatLng(23.16732, 72.44671);
        function initialize() {
            var mapCanvas = document.getElementById('map-canvas');
            var mapOptions = {
                center:myCenter,
                zoom: 15,
                scrollwheel: false,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var marker = new google.maps.Marker({
                position: myCenter,
            });
            var map = new google.maps.Map(mapCanvas, mapOptions);
        }
        google.maps.event.addDomListener(window, 'load', initialize);

        /* Map */

    </script>

</asp:Content>

