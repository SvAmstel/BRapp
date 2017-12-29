<%@ Page Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="champion.aspx.cs" Inherits="Views_champion" %>

<asp:Content ID="ContentChampion" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
    </head>
    <body>
       <asp:Table ID="tblHeader" runat="server">


       </asp:Table>
        
        

            
        <div style="width:800px">
            <table>

                <tr>
                    <td>
                        <asp:LinkButton ID="lnkTab1" runat="server" OnClick="lnkTab1_Click">Skills</asp:LinkButton></td>
                    <td>
                        <asp:LinkButton ID="lnkTab2" runat="server" OnClick="lnkTab2_Click">Battlerites</asp:LinkButton></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <asp:Table ID="tblSkills" runat="server" GridLines="Both" BorderStyle="Solid">
                                    <asp:TableRow>
                                        <asp:TableCell></asp:TableCell>
                                        <asp:TableCell>Name</asp:TableCell>
                                        <asp:TableCell>Keybinding</asp:TableCell>
                                        <asp:TableCell>Description</asp:TableCell>
                                        <asp:TableCell>Energy gain</asp:TableCell>
                                        <asp:TableCell>Energy cost</asp:TableCell>
                                        <asp:TableCell>Cooldown</asp:TableCell>
                                        <asp:TableCell>Cast time</asp:TableCell>
                                        <asp:TableCell>Skill type</asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <asp:Table ID="tblBattlerites" runat="server" GridLines="Both" BorderStyle="Solid">
                                    <asp:TableRow>
                                        <asp:TableCell></asp:TableCell>
                                        <asp:TableCell>Name</asp:TableCell>
                                        <asp:TableCell>Description</asp:TableCell>
                                        <asp:TableCell>Type</asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
            </table>
        </div>
    </body>
    </html>
</asp:Content>
