<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEmployees.aspx.cs" Inherits="AdminComponent1.ViewEmployees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Employees</title>
</head>

<body style="background-color: #0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 900px;
            margin: 60px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            font-size: 20px;
            color: #0A3D62;
        ">

            <div style="font-size:26px; font-weight:bold; margin-bottom:25px; text-align:center;">
                Employee Profiles
            </div>

            <asp:Button ID="LoadBtn" runat="server" 
                Text="Display All Employee Profiles"
                OnClick="LoadData"
                Style="
                    font-size:18px;
                    background-color:#0A3D62;
                    color:white;
                    padding:10px 20px;
                    border:none;
                    border-radius:6px;
                    width:100%;
                    margin-bottom:25px;
                " />

            <asp:GridView ID="Grid" runat="server"
                Style="width:100%; font-size:18px; border-collapse:collapse;"
                HeaderStyle-BackColor="#0A3D62"
                HeaderStyle-ForeColor="White"
                HeaderStyle-Font-Bold="True"
                RowStyle-BackColor="#f2f2f2"
                AlternatingRowStyle-BackColor="#ffffff"
                BorderStyle="Solid"
                BorderWidth="1px"
                CellPadding="8">
            </asp:GridView>

        </div>

    </form>

</body>
</html>
