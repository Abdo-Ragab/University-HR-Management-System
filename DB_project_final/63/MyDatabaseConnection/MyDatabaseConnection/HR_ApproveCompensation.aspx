<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR_ApproveCompensation.aspx.cs" Inherits="MyDatabaseConnection.HR_ApproveCompensation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body style="background-color: #0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 400px;
            margin: 100px auto;
            text-align: center;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            font-size: 20px;
        ">

            <span style="color:#0A3D62;">Request ID:</span>
            <asp:TextBox ID="RequestID2" runat="server" Style="font-size:18px;" />

            <br /><br />

            <asp:Button ID="Process2" runat="server" Text="Process" OnClick="Process"
                Style="font-size:18px; background-color:#0A3D62; color:white; padding:8px 16px; border:none; border-radius:6px;" />

            <br /><br />

            <asp:Label ID="lblResult2" runat="server" Style="font-size:18px; color:#0A3D62;"></asp:Label>

        </div>

    </form>

</body>
</html>
