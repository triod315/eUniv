<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EUniv.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center">Welcome to EUniv managment system!</h1>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
        <asp:Button ID="Button1" runat="server" Text="Create student" Width="157px" />
        <asp:Button ID="Button2" runat="server" Text="Create teacher" Width="157px" />
        <asp:Button ID="Button3" runat="server" Text="Create adminstrator" Width="157px" />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" Text="Manage users" Width="313px" />
        </p>
        <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
