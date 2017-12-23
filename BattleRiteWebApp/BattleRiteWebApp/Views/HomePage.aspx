<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Views_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Home</title>
    </head>
    <body>
        <div>
            <asp:Table ID="tblChampions" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Name</asp:TableCell>
                    <asp:TableCell>Bio</asp:TableCell>
                    <asp:TableCell>Image</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </body>
    </html>

</asp:Content>


