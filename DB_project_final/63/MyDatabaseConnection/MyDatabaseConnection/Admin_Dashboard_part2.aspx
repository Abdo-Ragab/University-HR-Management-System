<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Dashboard_part2.aspx.cs" Inherits="MyDatabaseConnection.Admin_Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
</head>

<body style="background-color:#0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 1000px;
            margin: 40px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            font-size: 20px;
            color: #0A3D62;
        ">

            <div style="font-size:32px; font-weight:bold; text-align:center; margin-bottom:20px;">
                Admin Dashboard
            </div>

            <h3 style="margin-top:30px;">1. View Yesterday's Attendance</h3>

            <asp:Button ID="btnViewAttendance" runat="server"
                Text="Show Attendance"
                OnClick="viewAttendance_Click"
                Style="font-size:18px; background-color:#0A3D62; color:white; padding:10px 20px; border:none; border-radius:6px; width:250px;" />

            <br /><br />

            <asp:GridView ID="gridAttendance" runat="server"
                EmptyDataText="No records found"
                Style="width:100%; font-size:18px; border-collapse:collapse;"
                HeaderStyle-BackColor="#0A3D62"
                HeaderStyle-ForeColor="White"
                HeaderStyle-Font-Bold="True"
                RowStyle-BackColor="#f2f2f2"
                AlternatingRowStyle-BackColor="#ffffff"
                BorderStyle="Solid"
                BorderWidth="1px"
                CellPadding="10">
            </asp:GridView>

            <hr style="margin:40px 0;" />

            <h3>2. View Winter Performance</h3>

            <asp:Button ID="btnViewPerformance" runat="server"
                Text="Show Performance"
                OnClick="viewPerformance_Click"
                Style="font-size:18px; background-color:#0A3D62; color:white; padding:10px 20px; border:none; border-radius:6px; width:250px;" />

            <br /><br />

            <asp:GridView ID="gridPerformance" runat="server"
                EmptyDataText="No records found"
                Style="width:100%; font-size:18px; border-collapse:collapse;"
                HeaderStyle-BackColor="#0A3D62"
                HeaderStyle-ForeColor="White"
                HeaderStyle-Font-Bold="True"
                RowStyle-BackColor="#f2f2f2"
                AlternatingRowStyle-BackColor="#ffffff"
                BorderStyle="Solid"
                BorderWidth="1px"
                CellPadding="10">
            </asp:GridView>

            <hr style="margin:40px 0;" />

            <h3>3. Remove Attendance During Official Holidays</h3>

            <asp:Button ID="btnRemoveHoliday" runat="server"
                Text="Clear Holiday Attendance"
                OnClick="removeHoliday_Click"
                Style="font-size:18px; background-color:#0A3D62; color:white; padding:10px 20px; border:none; border-radius:6px; width:300px;" />

            <asp:Label ID="lblHolidayMessage" runat="server"
                Style="margin-left:15px; font-size:18px; color:green; font-weight:bold;"></asp:Label>

            <hr style="margin:40px 0;" />

            <h3>4. Remove Unattended Day Off</h3>

            <label style="font-weight:bold;">Employee ID:</label>
            <asp:TextBox ID="txtEmpID_DayOff" runat="server"
                Style="font-size:18px; width:200px; margin-left:10px;" />

            <br /><br />

            <asp:Button ID="btnRemoveDayOff" runat="server"
                Text="Remove Day Off"
                OnClick="removeDayOff_Click"
                Style="font-size:18px; background-color:#0A3D62; color:white; padding:10px 20px; border:none; border-radius:6px; width:250px;" />

            <asp:Label ID="lblDayOffMessage" runat="server"
                Style="margin-left:15px; font-size:18px; color:green; font-weight:bold;"></asp:Label>

            <hr style="margin:40px 0;" />

            <h3>5. Remove Approved Leaves</h3>

            <label style="font-weight:bold;">Employee ID:</label>
            <asp:TextBox ID="txtEmpID_Leaves" runat="server"
                Style="font-size:18px; width:200px; margin-left:10px;" />

            <br /><br />

            <asp:Button ID="btnRemoveLeaves" runat="server"
                Text="Remove Leaves"
                OnClick="removeLeaves_Click"
                Style="font-size:18px; background-color:#0A3D62; color:white; padding:10px 20px; border:none; border-radius:6px; width:250px;" />

            <asp:Label ID="lblLeavesMessage" runat="server"
                Style="margin-left:15px; font-size:18px; color:green; font-weight:bold;"></asp:Label>

            <hr style="margin:40px 0;" />

            <h3>6. Replace Employee</h3>

            <label style="font-weight:bold;">Old Employee ID:</label>
            <asp:TextBox ID="txtOldEmpID" runat="server"
                Style="font-size:18px; width:200px; margin-left:10px;" />

            <br /><br />

            <label style="font-weight:bold;">New Employee ID:</label>
            <asp:TextBox ID="txtNewEmpID" runat="server"
                Style="font-size:18px; width:200px; margin-left:10px;" />

            <br /><br />

            <label style="font-weight:bold;">Start Date:</label>
            <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date"
                Style="font-size:18px; width:200px; margin-left:10px;" />

            <br /><br />

            <label style="font-weight:bold;">End Date:</label>
            <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date"
                Style="font-size:18px; width:200px; margin-left:10px;" />

            <br /><br />

            <asp:Button ID="btnReplace" runat="server"
                Text="Replace Employee"
                OnClick="replaceEmployee_Click"
                Style="font-size:18px; background-color:#0A3D62; color:white; padding:10px 20px; border:none; border-radius:6px; width:250px;" />

            <asp:Label ID="lblReplaceMessage" runat="server"
                Style="margin-left:15px; font-size:18px; color:green; font-weight:bold;"></asp:Label>

            <hr style="margin:40px 0;" />

            <h3>7. Update Employment Status</h3>

            <label style="font-weight:bold;">Employee ID:</label>
            <asp:TextBox ID="txtEmpID_Status" runat="server"
                Style="font-size:18px; width:200px; margin-left:10px;" />

            <br /><br />

            <asp:Button ID="btnUpdateStatus" runat="server"
                Text="Update Status"
                OnClick="updateStatus_Click"
                Style="font-size:18px; background-color:#0A3D62; color:white; padding:10px 20px; border:none; border-radius:6px; width:250px;" />

            <asp:Label ID="lblStatusMessage" runat="server"
                Style="margin-left:15px; font-size:18px; color:green; font-weight:bold;"></asp:Label>

        </div>

    </form>

</body>
</html>
