<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="AdminAddBus.aspx.cs" Inherits="AdminAddBus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1">
        <asp:Button ID="backButton" runat="server" Text="Back" OnClick="BackButtonClicked"/><br /><br />
        <div align="center">
            <h2>ADD NEW BUS</h2><br /><br /><br />
        	Bus ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
		<p>
			From:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
		</p>
		<p>
			To:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
		</p>
		<p>
			Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
		</p>
        <p>
			Time:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
		</p>
		Total Seats:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
		<p>
			Available Seats:&nbsp;
			<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
		</p>
		<p>
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Data" />
		</p>
            </div>
    </form>
</asp:Content>

