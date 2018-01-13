<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Battlesite.Views.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <button type="button">Click Me!</button>
            <asp:Button ID="testknopje" runat="server" Text="TEST" OnClick="testknopje_Click" />
        </div>
    </form>
</body>
</html>