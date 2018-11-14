<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">

        <div class="form-register-with-email" style="margin: 0 0 0 265px">

            <div class="form-white-background">

                <div class="form-title-row">
                    <h1>Reset Password!</h1>
                    <p>
                        <asp:Label ID="lblMsg" runat="server" Font-Size="XX-Large"></asp:Label></p>
                </div>
                <div class="form-row">
                    <label >
                        <span style="width:160px">
                            <asp:Label ID="lblPassword" runat="server" Text="New Password:" Visible="false"></asp:Label></span>
                        <asp:TextBox ID="tbNewPass"  TextMode="Password" runat="server"  Visible="false"></asp:TextBox>
                </label>
                        </div>
                <div class="form-row">
                    <label>
                        <span style="width:160px">
                            <asp:Label ID="lblRetypePass" runat="server" Text="Re-type Password:" Visible="false"></asp:Label></span>
                        <asp:TextBox ID="tbConfirmPass" TextMode="Password" runat="server"  Visible="false"></asp:TextBox>

                    </label>
                </div>


                <div class="form-row" style="color: white">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            <asp:Button ID="btRecPass" runat="server" Visible="false"  CssClass=" btn btn-primary font-additional hvr-bounce-to-right before-bg"  Height="42px" Text="Reset" OnClick="btRecPass_Click"  />

                    <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="Please enter your new Password !" ControlToValidate="tbNewPass"></asp:RequiredFieldValidator>

                                            <asp:CompareValidator ID="CompareValidatorPass" runat="server" CssClass="text-danger" ErrorMessage="Both Password must be same !" ControlToCompare="tbConfirmPass" ControlToValidate="tbNewPass"></asp:CompareValidator>

                    <asp:Label ID="lblPassRec" runat="server"></asp:Label>
                </div>
            </div>
        </div>

    </div>

</asp:Content>

