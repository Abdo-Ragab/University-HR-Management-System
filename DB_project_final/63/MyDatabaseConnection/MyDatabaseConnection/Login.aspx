<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyDatabaseConnection.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>

<body style="background-color: #0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 400px;
            margin: 120px auto;
            text-align: center;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            font-size: 20px;
        ">

            <div style="color:#0A3D62; font-size:28px; font-weight:bold; margin-bottom:25px;">
                Please Log In
            </div>

            <div style="color:#0A3D62; font-size:20px; font-weight:bold;">
                Username:
            </div>
            <asp:TextBox ID="username" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:15px;" />

            <br />

            <div style="color:#0A3D62; font-size:20px; font-weight:bold;">
                Password:
            </div>
            <asp:TextBox ID="password" runat="server" TextMode="Password"
                Style="font-size:18px; width:250px; margin-bottom:20px;" />

            <br />

            <asp:Button ID="signin" runat="server" Text="Log In" OnClick="login"
                Style="font-size:18px; background-color:#0A3D62; color:white; padding:10px 20px; border:none; border-radius:6px;" />

        </div>

    </form>

</body>
</html>
