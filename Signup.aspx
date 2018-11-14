<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
     
            <div class="container">
                      
                   <div class="form-register-with-email" style="margin:0 0 0 265px">

                        <div class="form-white-background">

                            <div class="form-title-row">
                                <h1>New User Signup!</h1>
                            </div>
                            
                            <div class="form-row">
                                <label>
                                 <span>   Name:</span>
                            <asp:TextBox ID="tbName" runat="server" placeholder="Your name"></asp:TextBox>
                                </label>
                            </div>
                            <div class="form-row">
                                <label>
                                    <span>Mobile:</span>
                            <asp:TextBox ID="tbMob" runat="server" placeholder="Your Mobile Number" ValidationGroup="time" ClientIDMode="Static"></asp:TextBox>

                                      </label>
                            </div>
                            <div class="form-row">
                                <label>
                                    <span>Email:</span>
                            <asp:TextBox ID="tbEmail" runat="server" TextMode="Email" placeholder="e.g. Xyz@abc.com" ></asp:TextBox>
                                </label>
                            </div>
                            <div class="form-row">
                                <label>
                                    <span>Password:</span>                           
                            <asp:TextBox ID="tbPass" runat="server" TextMode="Password" placeholder="Your password"></asp:TextBox>
                                </label>
                            </div>
                            <div class="form-row">
                                <label>
                                   <span> Re-Password:</span>           
                            <asp:TextBox ID="tbRepaas" runat="server" TextMode="Password" placeholder="Retype Password"></asp:TextBox>
                                </label>
                            </div>

                            <div class="form-row">
                                <label class="form-checkbox">
                                    <asp:CheckBox ID="cbsignup" runat="server" />
                                    <span>I agree to the <a href="Term And Condition.aspx">terms and conditions</a></span>
                                </label>
                            </div>



                            <div class="form-row">

                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

                                <asp:Button ID="Button2" runat="server" Text="Signup" ValidationGroup="time" CssClass=" btn btn btn-primary font-additional hvr-bounce-to-right before-bg"  OnClick="Button2_Click"  Font-Size="18px" />
                                <asp:Label ID="lblMsg" runat="server" CssClass="text-danger"></asp:Label>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  ValidationGroup="time" runat="server" ErrorMessage="Insert a valid mobile number!!" ForeColor="Red" ControlToValidate="tbMob" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$" ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ForeColor="Red" ControlToValidate="tbPass"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbName" ViewStateMode="Enabled" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </div>
                                 </div>
               
            </div>
                </div>
      </ContentTemplate>
    </asp:UpdatePanel>
  
   


    

</asp:Content>


