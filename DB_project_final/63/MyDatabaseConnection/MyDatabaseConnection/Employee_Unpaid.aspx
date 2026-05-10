<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_Unpaid.aspx.cs" Inherits="MyDatabaseConnection.Employee_Unpaid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Unpaid Leave Request</title>
</head>

<body style="background-color:#0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 550px;
            margin: 80px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            text-align: center;
            font-size: 20px;
            color:#0A3D62;
        ">

            <div style="font-size:30px; font-weight:bold; margin-bottom:30px;">
                Unpaid Leave Request
            </div>

            <div style="font-weight:bold;">Start Date (YYYY-MM-DD):</div>
            <asp:TextBox ID="TextBoxStart" runat="server"
                Style="font-size:18px; width:260px; margin-bottom:20px;" />

            <div style="font-weight:bold;">End Date (YYYY-MM-DD):</div>
            <asp:TextBox ID="TextBoxEnd" runat="server"
                Style="font-size:18px; width:260px; margin-bottom:20px;" />

            <div style="font-weight:bold;">Document Description:</div>
            <asp:TextBox ID="TextBoxDesc" runat="server"
                Style="font-size:18px; width:260px; margin-bottom:20px;" />

            <div style="font-weight:bold;">Document File Name:</div>
            <asp:TextBox ID="TextBoxFile" runat="server"
                Style="font-size:18px; width:260px; margin-bottom:25px;" />

            <br />

            <asp:Button ID="ProcessUnpaid" runat="server"
                Text="Submit Unpaid Leave"
                OnClick="ProcessUnpaid_Click"
                Style="font-size:18px; background-color:#0A3D62; color:white;
                       padding:10px 20px; border:none; border-radius:6px; width:280px;" />

            <br /><br />

            <asp:Label ID="lblResult" runat="server" Visible="false"
                Style="font-size:18px; font-weight:bold; color:#0A3D62;"></asp:Label>

        </div>

    </form>

</body>
</html>
