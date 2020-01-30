<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" Theme="SkinFile" CodeFile="CustomerLogin.aspx.cs" Inherits="CustomerLogin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Button ID="backButton" runat="server" Text="Back" OnClick="BackButtonClicked"/><br /><br />

    <br />
    <br /><br /><br /><br /><br /><br />
    <asp:Panel runat="server" HorizontalAlign="Center">
    <asp:Label ID="Label2" runat="server" Text="CUSTOMER LOGIN" Font-Size="Larger" Font-Bold="true"></asp:Label>
    <br />
    <br />
    <asp:Label ID="usernameLabel" runat="server" Text="Username"></asp:Label><br />
    <asp:TextBox ID="usernameText" runat="server"></asp:TextBox><br /><br />
    <asp:RequiredFieldValidator ID="usernameRequired" runat="server" ErrorMessage="Enter Username!" ControlToValidate ="usernameText"></asp:RequiredFieldValidator>
    <br /><asp:Label ID="passwordLabel" runat="server" Text="Password:"></asp:Label><br />
    <asp:TextBox ID="passwordText" runat="server" SkinID="Two"></asp:TextBox><br /><br />
    <asp:RequiredFieldValidator ID="passwordRequired" runat="server" ErrorMessage="Enter Password!" ControlToValidate="passwordText"></asp:RequiredFieldValidator>

    <br /><asp:Button ID="customerLoginButton" runat="server" Text="Login" OnClick="CustomerLoginButtonClicked" />
    <br />
    <asp:Label ID="invalidLabel" runat="server" Text=""></asp:Label>
    </asp:Panel>
</asp:Content>

