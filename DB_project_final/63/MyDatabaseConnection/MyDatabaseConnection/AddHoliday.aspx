<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddHoliday.aspx.cs" Inherits="AdminComponent1.AddHoliday" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Holiday</title>
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
                Add Holiday
            </div>

            <div style="font-weight:bold;">Holiday Name:</div>
            <asp:TextBox ID="Name" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:15px;" />

            <br />

            <div style="font-weight:bold;">From Date:</div>
            <asp:TextBox ID="FromDate" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:15px;" />

            <br />

            <div style="font-weight:bold;">To Date:</div>
            <asp:TextBox ID="ToDate" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:20px;" />

            <br />

            <asp:Button ID="Btn" runat="server"
                Text="Add Holiday"
                OnClick="Add_Holiday"
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
