<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddressUser.aspx.cs" Inherits="AddressUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
             <div class="container">

               <div class="form-register-with-email" style="width:750px; margin-right:150px" >

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>First Plese fill form of your address</h1>
                    </div>

                    <div class="form-row">
                        <label>
                            <span style="width:160px">Line1*:</span>
                            <asp:TextBox ID="tbln1" runat="server" Width="250px"></asp:TextBox>
                        </label>
                    </div>
                    <div class="form-row">
                        <label>
                            <span style="width:160px">Line2*:</span>
                            <asp:TextBox ID="tbln2" runat="server" Width="250px"></asp:TextBox>
                        </label>
                    </div>
                    
                    <div class="form-row">
                        <label>
                            <span style="width:160px">Landmark*:</span>
                            <asp:TextBox ID="tblm" runat="server" Width="250px"></asp:TextBox>
                        </label>
                    </div>
                     <div class="form-row">
                        <label>
                            <span style="width:160px">State*:</span>
                             <asp:DropDownList ID="Drpstate" runat="server" CssClass="selectbox" Height="42px" AutoPostBack="True" Width="250px" DataSourceID="SqlDataSource1" DataTextField="StName" DataValueField="Sid"  ></asp:DropDownList>
                       
                       
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SwapshopConnectionString %>" SelectCommand="SELECT * FROM [State_Master]"></asp:SqlDataSource>
                       
                       
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span style="width:160px">City*:</span>
                             <asp:DropDownList ID="drpcity" runat="server" CssClass="selectbox" Height="42px" AutoPostBack="True" Width="250px" DataSourceID="SqlDataSource2" DataTextField="CName" DataValueField="Cid"  ></asp:DropDownList>
                       
                       
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SwapshopConnectionString %>" SelectCommand="SELECT * FROM [City_Master] WHERE ([Sid] = @Sid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Drpstate" Name="Sid" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                       
                       
                        </label>
                    </div>
                     <div class="form-row">
                        <label>
                            <span style="width:160px">Pincode*:</span>
                             <asp:DropDownList ID="drppc" runat="server"  Height="42px" Width="250px" CssClass="selectbox" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Pincode" DataValueField="PCid"></asp:DropDownList>
                           
                         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SwapshopConnectionString %>" SelectCommand="SELECT * FROM [PinCode] WHERE ([Cid] = @Cid)">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="drpcity" Name="Cid" PropertyName="SelectedValue" Type="Int32" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                           
                        </label>
                    </div>                                                       

                    <div class="form-row" style="border:none" >
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnpp" runat="server" OnClick="btnpp_Click" CssClass="btn btn-primary font-additional hvr-bounce-to-right before-bg" Text="Submit Your Address"  BorderColor="White" BorderStyle="Solid" BorderWidth="1px"  />
                        <br />
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </div>

                </div>
                </div>
               </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    

</asp:Content>

