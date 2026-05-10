<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RejectedMedicals.aspx.cs" Inherits="AdminComponent1.RejectedMedicals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rejected Medical Leaves</title>
</head>

<body style="background-color: #0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 800px;
            margin: 60px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            font-size: 20px;
            color: #0A3D62;
        ">

            <div style="font-size:26px; font-weight:bold; margin-bottom:25px; text-align:center;">
                Rejected Medical Leave Requests
            </div>

            <asp:Button ID="LoadBtn" runat="server"
                Text="Display details of all rejected medical leaves"
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

