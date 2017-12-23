<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Views_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnGetInfo" runat="server" OnClick="btnGetInfo_Click" Text="Testknopje" />
            <asp:Label ID="lblPlayerName" runat="server" />
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="btnGetPlayer_Click" Text="getPlayer" />
        </div>
        <div>
            <asp:Table ID="tblChampions" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Name</asp:TableCell>
                    <asp:TableCell>Bio</asp:TableCell>
                    <asp:TableCell>Image</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
