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
            <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="ChampionName" HeaderText="Name" ItemStyle-Width="30" />
                    <asp:BoundField DataField="ChampionBio" HeaderText="Bio" ItemStyle-Width="150" />
                    <asp:BoundField DataField="ChampionImage" HeaderText="Image" ItemStyle-Width="150" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
