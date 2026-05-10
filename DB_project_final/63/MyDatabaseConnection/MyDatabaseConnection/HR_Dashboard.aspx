<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR_Dashboard.aspx.cs" Inherits="MyDatabaseConnection.HR_Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HR Dashboard</title>
</head>

<body style="background-color: #0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 600px;
            margin: 80px auto;
            text-align: center;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            font-size: 30px;
            color: #0A3D62;
            font-weight: bold;
        ">

            HR Functions

            <br /><br />

            <asp:Button ID="Approve1" runat="server" 
                Text="Approve Annual / Accidental Leaves"
                OnClick="Approve"
                Style="width:100%; font-size:18px; background-color:#0A3D62; color:white; padding:10px; border:none; border-radius:6px;" />

            <br /><br />

            <asp:Button ID="Unpaid1" runat="server" 
                Text="Approve Unpaid Leave"
                OnClick="Unpaid"
                Style="width:100%; font-size:18px; background-color:#0A3D62; color:white; padding:10px; border:none; border-radius:6px;" />

            <br /><br />

            <asp:Button ID="Button1" runat="server" 
                Text="Approve Compensation Leave"
                OnClick="comp"
                Style="width:100%; font-size:18px; background-color:#0A3D62; color:white; padding:10px; border:none; border-radius:6px;" />

            <br /><br />

            <asp:Button ID="Button2" runat="server" 
                Text="Add Deduction Due to Missing Hours"
                OnClick="ded"
                Style="width:100%; font-size:18px; background-color:#0A3D62; color:white; padding:10px; border:none; border-radius:6px;" />

            <br /><br />

            <asp:Button ID="Button3" runat="server" 
                Text="Add Deduction Due to Missing Days"
                OnClick="dedday"
                Style="width:100%; font-size:18px; background-color:#0A3D62; color:white; padding:10px; border:none; border-radius:6px;" />

            <br /><br />

            <asp:Button ID="Button4" runat="server" 
                Text="Add Deduction Due to Unpaid Leave"
                OnClick="dedunpaid"
                Style="width:100%; font-size:18px; background-color:#0A3D62; color:white; padding:10px; border:none; border-radius:6px;" />

            <br /><br />

            <asp:Button ID="Button5" runat="server" 
                Text="Generate Monthly Payroll"
                OnClick="Generate"
                Style="width:100%; font-size:18px; background-color:#0A3D62; color:white; padding:10px; border:none; border-radius:6px;" />

        </div>

    </form>

</body>
</html>
