<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="CustomerOptions.aspx.cs" Inherits="CustomerOptions" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Button ID="logoutButton" runat="server" Text="Logout" OnClick="LogoutButtonClicked"/><br /><br />
    
    <asp:ImageButton ID="bookButton" runat="server" OnClick="BookButtonClicked" ImageUrl="~/book.png" Height="325px" style="margin-left: 312px" Width="265px" />
    
    <asp:ImageButton ID="cancelButton" runat="server" OnClick="CancelButtonClicked" ImageUrl="~/cancel.png" style="margin-left: 38px" />
    <asp:ImageButton ID="printButton" runat="server" OnClick="PrintButtonClicked" ImageUrl="~/print.png" Height="258px" style="margin-left: 57px" Width="264px" /><br />
    <asp:Label id ="l" Text =" Book Tickets" runat="server" style="margin-left: 352px"></asp:Label>
    <asp:Label id ="Label1" Text =" Cancel Tickets" runat="server" style="margin-left: 250px"></asp:Label>
    <asp:Label id ="Label2" Text =" Print Tickets" runat="server" style="margin-left: 280px"></asp:Label>
</asp:Content>

