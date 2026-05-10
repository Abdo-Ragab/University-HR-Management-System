<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_Dashboard.aspx.cs" Inherits="MyDatabaseConnection.Employee_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Dashboard</title>
</head>

<body style="background-color:#0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 700px;
            margin: 60px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            font-size: 20px;
            color:#0A3D62;
            text-align:center;
        ">

            <div style="font-size:30px; font-weight:bold; margin-bottom:30px;">
                Employee Dashboard
            </div>

            <asp:Button ID="perf" runat="server" 
                Text="Retrieve my performance for a certain semester"
                OnClick="perf1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="att" runat="server"
                Text="Retrieve attendance records for the current month"
                OnClick="att1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="det" runat="server"
                Text="Retrieve last month’s payroll details."
                OnClick="det1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="ded" runat="server"
                Text="Retrieve last month’s payroll deductions."
                OnClick="ded1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="applyanu" runat="server"
                Text="Apply for an annual leave."
                OnClick="appan1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="applyacc" runat="server"
                Text="Apply for an accidental leave."
                OnClick="applyacc1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="applymed" runat="server"
                Text="Apply for a medical leave."
                OnClick="applymed1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="applyunpaid" runat="server"
                Text="Apply for an unpaid leave."
                OnClick="applyunpaid1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="applycomp" runat="server"
                Text="Apply for a compensation leave."
                OnClick="applycomp1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="dvpun" runat="server"
                Text="Dean/Vice-Dean/President: Approve/Reject unpaid leaves."
                OnClick="dvpun1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="dvpann" runat="server"
                Text="Dean/Vice-Dean/President: Approve/Reject annual leaves."
                OnClick="dvpann1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="deval" runat="server"
                Text="Dean: Evaluate employee."
                OnClick="deval1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:20px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

            <asp:Button ID="retrieve" runat="server"
                Text="Retrieve the status of all submitted annual and accidental leaves during the current month."
                OnClick="retrieve1"
                Style="width:100%; font-size:18px; padding:12px; margin-bottom:10px;
                       background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

        </div>

    </form>

</body>
</html>
