<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dean_Evaluation.aspx.cs" Inherits="MyDatabaseConnection.Dean_Evaluation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dean Evaluation</title>
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
                Dean Evaluation
            </div>

            <div style="font-weight:bold;">Employee to Evaluate:</div>
            <asp:DropDownList ID="DropDownEmployees" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:20px;"></asp:DropDownList>

            <div style="font-weight:bold;">Rating (1–5):</div>
            <asp:DropDownList ID="DropDownRating" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:20px;">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>

            <div style="font-weight:bold;">Comment:</div>
            <asp:TextBox ID="TextBoxComment" runat="server"
                Style="font-size:18px; width:250px; margin-bottom:20px;"></asp:TextBox>

            <div style="font-weight:bold;">Semester:</div>
            <asp:TextBox ID="TextBoxSemester" runat="server"
                placeholder="W25 or S24"
                Style="font-size:18px; width:250px; margin-bottom:25px;"></asp:TextBox>

            <asp:Button ID="BtnEvaluate" runat="server" 
                Text="Submit Evaluation" 
                OnClick="BtnEvaluate_Click"
                Style="font-size:18px; background-color:#0A3D62; color:white;
                       padding:10px 20px; border:none; border-radius:6px; width:250px;" />

            <br /><br />

            <asp:Label ID="lblResult" runat="server" Visible="false"
                Style="font-size:18px; font-weight:bold; color:#0A3D62;"></asp:Label>

        </div>

    </form>

</body>
</html>
