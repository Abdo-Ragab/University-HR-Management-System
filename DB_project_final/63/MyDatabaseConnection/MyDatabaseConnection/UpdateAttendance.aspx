<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateAttendance.aspx.cs" Inherits="AdminComponent1.UpdateAttendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Attendance</title>
</head>

<body style="background-color: #0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 500px;
            margin: 80px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            font-size: 20px;
            color: #0A3D62;
            text-align: center;
        ">

            <div style="font-size:26px; font-weight:bold; margin-bottom:25px;">
                Update Attendance
            </div>

            <div style="font-weight:bold;">Employee ID:</div>
            <asp:TextBox ID="EmpID" runat="server" 
                Style="font-size:18px; width:250px; margin-bottom:15px;" />

            <br />

            <div style="font-weight:bold;">Check-in Time:</div>
            <asp:TextBox ID="InTime" runat="server" 
                Style="font-size:18px; width:250px; margin-bottom:15px;" />

            <br />

            <div style="font-weight:bold;">Check-out Time:</div>
            <asp:TextBox ID="OutTime" runat="server" 
                Style="font-size:18px; width:250px; margin-bottom:20px;" />

            <br />

            <asp:Button ID="UpdateBtn" runat="server" Text="Update Attendance"
                OnClick="Update_Attendance"
                Style="
                    font-size:18px;
                    background-color:#0A3D62;
                    color:white;
                    padding:10px 20px;
                    border:none;
                    border-radius:6px;
                    width:100%;
                " />

            <br /><br />

            <asp:Label ID="Msg" runat="server" 
                Style="font-size:18px; color:#0A3D62; font-weight:bold;"></asp:Label>

        </div>

    </form>

</body>
</html>
