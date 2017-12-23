<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Views_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnGetInfo" runat="server" onclick="btnGetInfo_Click" Text="Testknopje" />
            <asp:Label ID="lblPlayerName" runat="server" />
        </div>
    </form>
</body>
</html>
