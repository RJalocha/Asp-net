<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="UniveristyRegisterSystem.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <script type="text/javascript">

window.onload = function(){setTimeout("location.href='home/index'", 2000);}
 

</script>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUserDetails" runat="server" Text=""></asp:Label>
            <br />
            <%--<asp:Button ID="btnLogout" runat="Server" Text="Wyloguj" OnClick="btnLogout_Click"/>--%>
        </div>
    </form>


</body>
</html>
