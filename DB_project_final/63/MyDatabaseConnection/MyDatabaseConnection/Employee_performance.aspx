<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_performance.aspx.cs" Inherits="MyDatabaseConnection.Employee_performance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Performance Evaluation</title>
</head>

<body style="background-color:#0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 650px;
            margin: 80px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            font-size: 20px;
            color:#0A3D62;
            text-align:center;
        ">

            <div style="font-size:30px; font-weight:bold; margin-bottom:30px;">
                Performance Evaluation
            </div>

            <div style="font-weight:bold;">Semester Number:</div>
            <asp:TextBox ID="semester" runat="server"
                Style="font-size:18px; width:200px; margin-bottom:25px;" />

            <br />

            <asp:Button ID="Process" runat="server"
                Text="View Performance"
                OnClick="Process1"
                Style="font-size:18px; background-color:#0A3D62; color:white;
                       padding:10px 20px; border:none; border-radius:6px; width:250px;" />

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
