<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_annual.aspx.cs" Inherits="MyDatabaseConnection.Employee_annual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Annual Leave Request</title>
</head>

<body style="background-color:#0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 500px;
            margin: 80px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            text-align: center;
            font-size: 20px;
            color:#0A3D62;
        ">

            <div style="font-size:30px; font-weight:bold; margin-bottom:30px;">
                Annual Leave Request
            </div>

            <div style="font-weight:bold;">Replacement Employee ID:</div>
            <asp:TextBox ID="empid7" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:20px;" />

            <div style="font-weight:bold;">Start Date (YYYY-MM-DD):</div>
            <asp:TextBox ID="TextBox1" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:20px;" />

            <div style="font-weight:bold;">End Date (YYYY-MM-DD):</div>
            <asp:TextBox ID="TextBox2" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:25px;" />

            <asp:Button ID="Process7" runat="server"
                Text="Submit Request"
                OnClick="Process"
                Style="font-size:18px; background-color:#0A3D62; color:white;
                       padding:10px 20px; border:none; border-radius:6px; width:250px;" />

            <br /><br />

            <asp:Label ID="lblResult" runat="server" Visible="false"
                Style="font-size:18px; font-weight:bold; color:#0A3D62;"></asp:Label>

        </div>

    </form>

</body>
</html>
