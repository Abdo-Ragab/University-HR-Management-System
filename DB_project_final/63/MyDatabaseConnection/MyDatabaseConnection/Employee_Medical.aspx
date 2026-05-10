<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_Medical.aspx.cs" Inherits="MyDatabaseConnection.Employee_Medical" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Medical Leave Request</title>
</head>

<body style="background-color:#0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 550px;
            margin: 60px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            text-align: center;
            font-size: 20px;
            color:#0A3D62;
        ">

            <div style="font-size:30px; font-weight:bold; margin-bottom:30px;">
                Medical Leave Request
            </div>

            <div style="font-weight:bold;">Start Date:</div>
            <asp:TextBox ID="TextBox1" runat="server"
                Style="font-size:18px; width:260px; margin-bottom:20px;" />

            <div style="font-weight:bold;">End Date:</div>
            <asp:TextBox ID="TextBox2" runat="server"
                Style="font-size:18px; width:260px; margin-bottom:20px;" />

            <asp:Label ID="lblResult" runat="server" Visible="false"
                Style="font-size:18px; font-weight:bold; color:#0A3D62; margin-bottom:20px;"></asp:Label>

            <div style="font-weight:bold;">Type:</div>
            <asp:DropDownList ID="DropDownListType" runat="server"
                Style="font-size:18px; width:260px; margin-bottom:20px;">
                <asp:ListItem Value="sick">Sick</asp:ListItem>
                <asp:ListItem Value="maternity">Maternity</asp:ListItem>
            </asp:DropDownList>

            <div style="font-weight:bold; margin-top:10px;">Insurance Status:</div>
            <asp:CheckBox ID="CheckBoxInsurance" runat="server" Text="Has Insurance"
                Style="font-size:18px; margin-bottom:20px;" />

            <div style="font-weight:bold;">Disability Details:</div>
            <asp:TextBox ID="TextBox3" runat="server"
                Style="font-size:18px; width:260px; margin-bottom:20px;" />

            <div style="font-weight:bold;">Document Description:</div>
            <asp:TextBox ID="TextBox4" runat="server"
                Style="font-size:18px; width:260px; margin-bottom:20px;" />

            <div style="font-weight:bold;">File Name:</div>
            <asp:TextBox ID="TextBoxFileName" runat="server"
                Style="font-size:18px; width:260px; margin-bottom:25px;" />

            <asp:Button ID="Process7" runat="server"
                Text="Submit Medical Leave"
                OnClick="Process"
                Style="font-size:18px; background-color:#0A3D62; color:white;
                       padding:10px 20px; border:none; border-radius:6px; width:300px;" />

        </div>

    </form>

</body>
</html>
