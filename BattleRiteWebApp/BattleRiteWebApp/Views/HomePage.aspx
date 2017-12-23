<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Views_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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

</asp:Content>


