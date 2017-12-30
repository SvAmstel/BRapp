<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="Player.aspx.cs" Inherits="Views_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
    </head>
    <body>
        <div>
            <asp:TextBox ID="tbxPlayerName" runat="server" />
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        </div>
        <div>
            <asp:Label ID="lblPlayerName" runat="server" />
        </div>
        <div>
            <asp:Table ID="tblWinrates" runat="server" />
        </div>
    </body>
    </html>
</asp:Content>

