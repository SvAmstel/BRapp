﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Champions.aspx.cs" Inherits="Battlesite.Views.Champions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" runat="server" media="screen" href="~/CSS/Homepage/TableStyle.css" />
    <title>Home</title>
</head>
<body>
    <div>
        <div id="DivMelee" style="padding-bottom: 10px">
            <asp:Table ID="tblMeleeChampions" runat="server">
                <asp:TableRow>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </div>
</body>
</html>