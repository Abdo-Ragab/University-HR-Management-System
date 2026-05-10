<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_statusleave.aspx.cs" Inherits="MyDatabaseConnection.Employee_statusleave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Status</title>
</head>

<body style="background-color:#0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 700px;
            margin: 80px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            font-size: 20px;
            color:#0A3D62;
            text-align:center;
        ">

            <div style="font-size:30px; font-weight:bold; margin-bottom:30px;">
                Leave Status
            </div>

            <asp:Button ID="Process" runat="server"
                Text="View Leave Status"
                OnClick="Process1"
                Style="font-size:18px; padding:10px 20px;
                       background-color:#0A3D62; color:white;
                       border:none; border-radius:6px; width:260px;" />

            <br /><br />

            <asp:GridView ID="Grid" runat="server" Visible="false"
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

        </div>

    </form>

</body>
</html>
