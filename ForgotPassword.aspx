<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container">

        <div class="form-register-with-email" style="margin: 0 0 0 265px">

            <div class="form-white-background">

                <div class="form-title-row">
                    <h1>Recover Password!</h1>
                </div>
                <p>Please enter your email address, We will send you the instrutions to reset your password.</p>


                <div class="form-row">
                    <label>
                        <span>Email:</span>
                        <asp:TextBox ID="tbEmailId" runat="server" TextMode="Email" placeholder="e.g. Xyz@abc.com"></asp:TextBox>
                    </label>
                </div>


                <div class="form-row" style="color: white">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

                                <asp:Button ID="btPassRec" runat="server" Text="Send" CssClass=" btn btn-primary font-additional hvr-bounce-to-right before-bg" Width="139px" Height="42px" Font-Bold="False" OnClick="btPassRec_Click1" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="Please enter your email ID !" ControlToValidate="tbEmailId"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblPassRec" runat="server"></asp:Label>
                </div>
            </div>
        </div>

    </div>






</asp:Content>

