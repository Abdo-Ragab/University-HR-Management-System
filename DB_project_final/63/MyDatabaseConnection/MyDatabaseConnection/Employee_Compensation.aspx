<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_Compensation.aspx.cs" Inherits="MyDatabaseConnection.Employee_Compensation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Compensation Leave Request</title>
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
                Compensation Leave Request
            </div>

            <div style="font-weight:bold;">Compensation Date:</div>
            <asp:TextBox ID="TextBoxCompDate" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:20px;" />

            <div style="font-weight:bold;">Reason:</div>
            <asp:TextBox ID="TextBoxReason" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:20px;" />

            <div style="font-weight:bold;">Original Workday Date:</div>
            <asp:TextBox ID="TextBoxOriginalDate" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:20px;" />

            <div style="font-weight:bold;">Replacement Employee ID:</div>
            <asp:TextBox ID="TextBoxReplacement" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:25px;" />

            <asp:Button ID="ProcessComp" runat="server"
                Text="Submit Compensation Leave"
                OnClick="ProcessComp_Click"
                Style="font-size:18px; background-color:#0A3D62; color:white;
                       padding:10px 20px; border:none; border-radius:6px; width:300px;" />

            <br /><br />

            <asp:Label ID="lblResult" runat="server" Visible="false"
                Style="font-size:18px; font-weight:bold; color:#0A3D62;"></asp:Label>

        </div>

    </form>

</body>
</html>
