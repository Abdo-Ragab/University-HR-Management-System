<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="AdminComponent1.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
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
            color: #0A3D62;
        ">

            <div style="font-size:30px; font-weight:bold; margin-bottom:30px;">
                Admin Home
            </div>

            <asp:Button runat="server" Text="View All Employees" 
                PostBackUrl="~/ViewEmployees.aspx"
                Style="width:100%; font-size:18px; padding:10px; background-color:#0A3D62; color:white; border:none; border-radius:6px;" />
            <br /><br />

            <asp:Button runat="server" Text="Employees Per Department" 
                PostBackUrl="~/EmployeesPerDept.aspx"
                Style="width:100%; font-size:18px; padding:10px; background-color:#0A3D62; color:white; border:none; border-radius:6px;" />
            <br /><br />

            <asp:Button runat="server" Text="Rejected Medical Leaves" 
                PostBackUrl="~/RejectedMedicals.aspx"
                Style="width:100%; font-size:18px; padding:10px; background-color:#0A3D62; color:white; border:none; border-radius:6px;" />
            <br /><br />

            <asp:Button runat="server" Text="Remove Resigned Deductions" 
                PostBackUrl="~/RemoveResignedDeductions.aspx"
                Style="width:100%; font-size:18px; padding:10px; background-color:#0A3D62; color:white; border:none; border-radius:6px;" />
            <br /><br />

            <asp:Button runat="server" Text="Update Attendance" 
                PostBackUrl="~/UpdateAttendance.aspx"
                Style="width:100%; font-size:18px; padding:10px; background-color:#0A3D62; color:white; border:none; border-radius:6px;" />
            <br /><br />

            <asp:Button runat="server" Text="Add Holiday" 
                PostBackUrl="~/AddHoliday.aspx"
                Style="width:100%; font-size:18px; padding:10px; background-color:#0A3D62; color:white; border:none; border-radius:6px;" />
            <br /><br />

            <asp:Button runat="server" Text="Initiate Attendance" 
                PostBackUrl="~/InitiateAttendance.aspx"
                Style="width:100%; font-size:18px; padding:10px; background-color:#0A3D62; color:white; border:none; border-radius:6px;" />
            <br /><br />

            <asp:Button runat="server" Text="Next Page" 
                PostBackUrl="~/Admin_Dashboard_part2.aspx"
                Style="width:100%; font-size:18px; padding:10px; background-color:#0A3D62; color:white; border:none; border-radius:6px;" />

        </div>

    </form>

</body>
</html>
