﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Views_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Home</title>
    </head>
    <body>
        <div id="DivMelee" style="padding-bottom: 10px">
            <asp:Table ID="tblMeleeChampions" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Melee</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="DivRanged" style="padding-bottom: 10px">
            <asp:Table ID="tblRangedChampions" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Ranged</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="DivSupport" style="padding-bottom: 10px">
            <asp:Table ID="tblSupportChampions" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Support</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </body>
    </html>
</asp:Content>


