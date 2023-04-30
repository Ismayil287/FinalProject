<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LastDance.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="LoginStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Login Here</h3>
        <label for="username">Username</label>
        <asp:TextBox ID="txtUsername" class="input" runat="server" placeholder="Username"/>
        <label for="password">Password</label>
        <asp:TextBox ID="txtPassword" class="input" runat="server" placeholder="Password" type="password"/>
        <asp:Button Text="Login" class="button" runat="server" OnClick="btnLogin_Click" />
        <asp:LinkButton Text="Don't you have an account? >>> Register" CssClass ="linkregister"  runat="server" link href="Registration.aspx" />
        <asp:Label  ID= "lblShow" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
