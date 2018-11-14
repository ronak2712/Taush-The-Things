<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Productadd.aspx.cs" Inherits="Productadd" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <div class="container">
             
               <div class="form-register-with-email" style="width:750px; margin-right:150px" >

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Post Your Product here!!!</h1>
                    </div>

                    <div class="form-row">
                        <label style="width:705px">
                            <span style="margin-left:20px">Title*:</span>
                            <asp:TextBox ID="tbTitle" runat="server" Width="70%"></asp:TextBox>
                        </label>
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                    <div class="form-row">
                        <div class="col-sm-6">
                            <label>
                            <span style="width:160px">Category*:</span>
                             <asp:DropDownList ID="drpcat" runat="server" CssClass="selectbox" Height="42px" AutoPostBack="True" Width="250px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CatId"></asp:DropDownList>
                       
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SwapshopConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
                       
                        </label>
                        </div>
                        <div class="col-sm-6">
                         <label>
                            <span style="width:160px">Subcategory*:</span>
                             <asp:DropDownList ID="drpsubcat" runat="server"  Height="42px" Width="250px" CssClass="selectbox" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="SName" DataValueField="Sid"></asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SwapshopConnectionString %>" SelectCommand="SELECT * FROM [Subcategory] WHERE ([CatId] = @CatId)">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="drpcat" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                        </label></div>
                    </div>
                     
                       
                      <div class="form-row">
                          <div class="col-sm-6">
                        <label>
                            <span style="width:160px">Approximate Price*:</span>
                             <asp:TextBox ID="tbPrice" runat="server" Width="250px"></asp:TextBox>
                        </label>
                              </div>
                          <div class="col-sm-6">
                              <label>
                            <span style="width:160px">Quantity*:</span>
                             <asp:TextBox ID="tbQuantity" runat="server" Width="250px"></asp:TextBox>
                        </label>
                              </div>

                    </div>
                          <div class="form-row">
                        <label style="width:705px;margin-top:28px">
                            <span style="margin-left:20px" spellcheck="true">Description*:</span>
                             <asp:TextBox ID="tbdec"  runat="server" Width="70%" TextMode="MultiLine" Rows="3"  BorderColor="#DBDBDB" BorderStyle="Solid" BorderWidth="1px" BackColor="White"></asp:TextBox>
                        </label>
                    </div>
                  
                    
                    <div class="form-row">
                        <label style="width:705px">
                            <span style="margin-left:20px">Need Of Product*:</span>
                             <asp:TextBox ID="tbNeed" runat="server" Width="70%"></asp:TextBox>
                        </label>
                    </div>

                    <div class="form-row">
                         <label style="width:705px">
                            <span style="margin-left:20px">Category*:</span>
                             <asp:DropDownList ID="DropDownList1" runat="server"  Height="42px" Width="70%" CssClass="selectbox" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="SName" DataValueField="SName"></asp:DropDownList>
                        </label>
                        </div>
                        <div class="form-row">
                        <label style="width:705px">
                            <span style="margin-left:20px" spellcheck="true">Need Product Description*:</span>
                             <asp:TextBox ID="TextBox1"  runat="server" Width="70%" TextMode="MultiLine" Rows="3"  BorderColor="#DBDBDB" BorderStyle="Solid" BorderWidth="1px" BackColor="White"></asp:TextBox>
                        </label>
                    </div>
                     </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="form-row">
                        <label>
                             <span style="margin-left:20px">Images:</span>
                            <div style= "margin: -22px 0px 0px 170px; box-shadow:none">
                            <asp:FileUpload ID="fuimg" runat="server"  Width="240px"   AllowMultiple="true" CssClass="btn"/>
                            <asp:FileUpload ID="fuimg2" runat="server" CssClass="btn"  Width="240px" style="margin: 5px 0 5px 0" />
                            <asp:FileUpload ID="fuimg3" runat="server" CssClass="btn" Width="240px" />
                            </div>
                        </label>
                    </div>
                    
                   

                    <div class="form-row" style="border:none" >
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="btnpp" runat="server" class="btn btn-primary font-additional hvr-bounce-to-right before-bg" Text="Post Your Product" OnClick="btnpp_Click" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"  />
                        <br />
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </div>

                </div>
                </div>
                   
               </div>




</asp:Content>


