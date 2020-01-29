<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UniveristyRegisterSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
    <style>
        body{
            background-image: url("Content/bg.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
        }
.content {
  max-width: 500px;
  margin: auto;
}
    </style>
</head>
<body>
<%--    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Nazwa użytkownika"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" OnTextChanged="txtUserName_TextChanged"></asp:TextBox></td>
                </tr>

                   <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Hasło"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox></td>
                </tr>

                   <tr>
                    <td>
                       </td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /> </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblErrorMessage" runat="server" Text="Wprowadzone dane są nieprawidłowe" ForeColor="Red"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
--%>

    <div class="content">

    <form id="form2" runat="server">
<div style="max-width: 400px;">
    <img src="Content/logo.png" />
    <h2 class="form-signin-heading">
        Panel Logowania</h2>
    <label for="txtUsername">
        Nazwa użytkownika</label>
    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Login"/>
    <br />
    <label for="txtPassword">
        Hasło</label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"
        placeholder="Hasło"/>
    <div class="checkbox">
        <asp:CheckBox ID="chkRememberMe" Text="Zapamiętaj?" runat="server" />
    </div>
    <asp:Button ID="btnLogin" Text="Zaloguj" runat="server" OnClick="btnLogin_Click" Class="btn btn-primary" />
    <br />
    <br />
 <asp:Label ID="lblErrorMessage" runat="server" Text="Wprowadzone dane są nieprawidłowe" ForeColor="Red"></asp:Label>
</div>
</form>
    </div>

</body>
</html>
