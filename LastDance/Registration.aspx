<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LastDance.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
	<link href="RegistrationStyle.css" rel="stylesheet" />
</head>
<body>
        <div class="page-content">
		<div class="form-v7-content">
			<div class="form-left">
				<img src="images/back77.jpg" alt="form" />
				<p class="text-1">Sign Up</p>
			</div>
			<form class="form-detail" action="#" method="post" id="myform" runat="server">
				<div class="form-row">
					<label for="username">USERNAME</label>
					<asp:TextBox runat="server" type="text" name="username" id="txtUsername" class="input-text" required />
				</div>
				<div class="form-row">
					<label for="your_email">E-MAIL</label>
					<asp:TextBox runat="server" type="text" name="your_email" id="txtEmail" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" />
				</div>
				<div class="form-row">
					<label for="password">PASSWORD</label>
					<asp:TextBox runat="server" type="password" name="password" id="txtPassword" class="input-text" required />
				</div>
				<div class="form-row">
					<label for="comfirm_password">CONFIRM PASSWORD</label>
					<asp:TextBox runat="server" type="password" name="comfirm_password" id="txtconfirm_password" class="input-text" required />
				</div>
				<div class="form-row">
					<asp:Label runat="server"  id="lblShow" class="input-text" required />
				</div>
				<div class="form-row-last">
					<asp:Button id="btnRegister" runat="server" Text="Register" CssClass="register" OnClick="btnRegister_Click" />
					<p>Or<asp:LinkButton text="Sign in" runat="server" link href="Login.aspx"/></p>
				</div>
				
			</form>
		</div>
	</div>
</body>
</html>
