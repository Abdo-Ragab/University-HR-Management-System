<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR_Generate.aspx.cs" Inherits="MyDatabaseConnection.HR_Generate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Generate Payroll</title>
</head>

<body style="background-color: #0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 450px;
            margin: 80px auto;
            text-align: center;
            background-color: white;
            padding: 35px;
            border-radius: 12px;
            font-size: 20px;
        ">

            <span style="color:#0A3D62; font-size:24px; font-weight:bold;">
                Generate Payroll
            </span>

            <br /><br />

            <div style="color:#0A3D62; font-size:20px; font-weight:bold;">
                Employee ID:
            </div>
            <asp:TextBox ID="empid7" runat="server"
                Style="font-size:18px; width:250px;" />

            <br /><br />

            <div style="color:#0A3D62; font-size:20px; font-weight:bold;">
                From Date (YYYY-MM-DD):
            </div>
            <asp:TextBox ID="TextBox1" runat="server"
                Style="font-size:18px; width:250px;" />

            <br /><br />

            <div style="color:#0A3D62; font-size:20px; font-weight:bold;">
                To Date (YYYY-MM-DD):
            </div>
            <asp:TextBox ID="TextBox2" runat="server"
                Style="font-size:18px; width:250px;" />

            <br /><br />

            <asp:Button ID="Process7" runat="server" Text="Process" OnClick="Process"
                Style="font-size:18px; background-color:#0A3D62; color:white; padding:10px 20px; border:none; border-radius:6px;" />

            <br /><br />

            <asp:Label ID="lblResult7" runat="server"
                Style="font-size:18px; color:#0A3D62;"></asp:Label>

        </div>

    </form>

</body>
</html>
