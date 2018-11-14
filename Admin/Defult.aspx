<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Defult.aspx.cs" Inherits="Admin_Default"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Swapshop</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<body>
    	<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="login.aspx"><img src="../images/home/Logo1.png" alt="" /></a>
						</div>
                        </div>
                    </div>
                </div>
            </div>

<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-sm-offset-4 ">
					<div class="login-form"><!--login form-->
						<h2>Login to your Admin accout</h2>
						<form id="form1" runat="server">
                            
							<asp:TextBox ID="TextBox1"  placeholder="Userid" runat="server"></asp:TextBox>
							<asp:TextBox ID="TextBox2"  placeholder="Password"  TextMode="Password" runat="server"></asp:TextBox>
                            
							<span>
								<asp:CheckBox ID="CheckBox1"  class="checkbox" runat="server" />
								Keep me signed in
							</span>
							<asp:Button ID="Button1" runat="server" Text="Login"  CssClass="btn" BackColor="#FE980F" Width="100px" OnClick="Button1_Click" ></asp:Button>
                            <asp:Label ID="lblMsg" runat="server" ></asp:Label>
						</form>
					</div><!--/login form-->
				</div>
						
			</div>
		</div>
	</section><!--/form-->    
</body>
</html>




