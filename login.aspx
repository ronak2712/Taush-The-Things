<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
     

            <div class="row">
                <div class="col-sm-5">
                    <div class="form-register-with-email">

                        <div class="form-white-background">

                            <div class="form-title-row">
                                <h1>Login to your Account</h1>
                            </div>

                            <div class="form-row">
                                <label>
                                    Email:                           
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" placeholder="Xyz@abc.com"></asp:TextBox>                                    
                                </label>
                            </div>
                            <div class="form-row">
                                <label>
                                    Password:                           
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Your Password"></asp:TextBox>
                                </label>
                            </div>

                            <div class="form-row">
                                <label class="form-checkbox">
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                    <span>Keep me signed in</span>
                                </label>
                            </div>



                            <div class="form-row">

                                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary font-additional hvr-bounce-to-right before-bg"  OnClick="Button1_Click" Width="96px" Height="40px" />
                                <asp:LinkButton ID="lbforgot" runat="server" OnClick="lbforgot_Click">Forgot password?</asp:LinkButton>
                               <br /> <asp:Label ID="lblMsg" runat="server" CssClass="text-danger"></asp:Label>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <div class="col-sm-1" style="padding-top:120px">
                    <h2 class="or">OR</h2>
                </div>
                <div class="col-sm-5" style="padding-top:110px">
                    <div class="form-register-with-email">

                        <div class="form-white-background">

                            <div class="form-title-row">
                                <h1>New User</h1>
                            </div>

                            <div class="form-row">
                                <label>
                                   Are you new user???Click<a href="Signup.aspx"> here</a> to register yourself……….
                         
                                </label>
                            </div>
                            </div>
                        
                    </div>
                </div>
            </div>
        
    </div>



</asp:Content>

