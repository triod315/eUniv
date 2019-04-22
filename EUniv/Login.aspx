<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EUniv.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EUniv auth</title>

    <style>
        .errorl {
            display:block;
            margin-left:auto;
            margin-right:auto;
            text-align:center;
            font-size:14pt;
            color:red;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p style="text-align: center; height: 23px; margin-bottom: 2px">
            Login or mail</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="18px" style="display:block; text-align: center; margin-left: auto; margin-right:auto; margin-top: 0px" Width="236px"></asp:TextBox>
        </p>
        <p style="text-align: center; height: 23px; margin-bottom: 2px">
            Password</p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="18px" style="display:block; text-align: center; margin-left: auto; margin-right:auto;margin-top: 0px" Width="236px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="display:block;margin-right:auto; margin-left: auto;" Text="Login" Width="126px" />
    </form>
</body>
</html>
