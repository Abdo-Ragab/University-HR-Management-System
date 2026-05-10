<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemoveResignedDeductions.aspx.cs" Inherits="AdminComponent1.RemoveResignedDeductions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Remove Resigned Employee Deductions</title>
</head>

<body style="background-color: #0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 500px;
            margin: 120px auto;
            text-align: center;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            font-size: 20px;
            color: #0A3D62;
        ">

            <div style="font-size:26px; font-weight:bold; margin-bottom:25px;">
                Remove Deductions for Resigned Employees
            </div>

            <asp:Button ID="RemoveBtn" runat="server" 
                Text="Remove Deductions"
                OnClick="ExecuteProc"
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
                Style="font-size:18px; color:green; font-weight:bold;"></asp:Label>

        </div>

    </form>

</body>
</html>
