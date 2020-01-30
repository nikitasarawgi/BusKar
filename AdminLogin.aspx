<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" Theme="SkinFile" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="backButton" runat="server" Text="Back" OnClick="BackButtonClicked"/><br /><br />
    <asp:Panel runat="server" HorizontalAlign="Center">
    <form id="form1">
        <div align="center">
            <br />
            <br />
            <br />
            <br />
            <br />
            <b><h2>ADMIN LOGIN</b></h2><br /><br /><br />User ID:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp; Password: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
       
            &nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Incorrect Username/Password" Visible="False"></asp:Label>
       
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        </p>
            </div>
    </form>
        </asp:Panel>
</asp:Content>

