<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DVP_UnpaidApproval.aspx.cs" Inherits="MyDatabaseConnection.DVP_UnpaidApproval" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DVP Unpaid Approval</title>
</head>

<body style="background-color:#0A3D62;">

    <form id="form1" runat="server">

        <div style="
            width: 500px;
            margin: 80px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            text-align: center;
            font-size: 20px;
            color:#0A3D62;
        ">

            <div style="font-size:30px; font-weight:bold; margin-bottom:30px;">
                DVP Unpaid Approval
            </div>

            <div style="font-weight:bold;">Request ID:</div>
            <asp:TextBox ID="TextBoxRequestID" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:25px;" />

            <asp:Button ID="BtnApproveUnpaid" runat="server"
                Text="Process Approval"
                OnClick="Approve_Unpaid"
                Style="font-size:18px; background-color:#0A3D62; color:white;
                       padding:10px 20px; border:none; border-radius:6px; width:250px;" />

            <br /><br />

            <asp:Label ID="lblResult" runat="server" Visible="false"
                Style="font-size:18px; font-weight:bold; color:#0A3D62;"></asp:Label>

        </div>

    </form>

</body>
</html>
