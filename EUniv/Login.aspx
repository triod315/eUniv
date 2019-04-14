<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EUniv.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EUniv auth</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p style="text-align: center; height: 23px; margin-bottom: 2px">
            Login or mail</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="18px" style="text-align: center; margin-left: 437px; margin-top: 0px" Width="236px"></asp:TextBox>
        </p>
        <p style="text-align: center; height: 23px; margin-bottom: 2px">
            Password</p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="18px" style="text-align: center; margin-left: 437px; margin-top: 0px" Width="236px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 500px" Text="Login" Width="126px" />
    </form>
</body>
</html>
