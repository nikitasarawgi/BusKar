<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="CancelBooking.aspx.cs" Inherits="CancelBooking" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Button ID="backButton" runat="server" Text="Back" OnClick="BackButtonClicked"/><br /><br />

    <div align ="center">
        <br /><br /><br />
    <asp:Label ID="pnrLabel" runat="server" Text="Enter PNR Number:" Font-Bold="true"></asp:Label><br /><br />
    <asp:TextBox ID="pnrText" runat="server" Text=""></asp:TextBox><br /><br />
    <asp:Button ID="displayButton" runat="server" Text="Display" OnClick="DisplayButtonClicked" /><br /><br />

    <asp:Label ID="deleteLabel" runat="server" Text="" Visible="false"></asp:Label>
        <br /><br />

    <asp:Panel ID="panel" runat="server" BorderStyle="Double" BorderColor="Black" Height="431px" Width="577px" HorizontalAlign="Center">

        <br />
        <br />
        <asp:Label ID="ticketpnrLabel" runat="server" Text="PNR Number: " Font-Bold="true"></asp:Label>
        <asp:Label ID="ticketpnrText" runat="server" Text=""></asp:Label><br /><br />

        <asp:Label ID="nameLabel" runat="server" Text="Name: " Font-Bold="true"></asp:Label>
        <asp:Label ID="nameText" runat="server" Text=""></asp:Label><br /><br />

        <asp:Label ID="phoneLabel" runat="server" Text="Phone Number: " Font-Bold="true"></asp:Label>
        <asp:Label ID="phoneText" runat="server" Text=""></asp:Label><br /><br />

         <asp:Label ID="emailLabel" runat="server" Text="Email: " Font-Bold="true"></asp:Label>
        <asp:Label ID="emailText" runat="server" Text=""></asp:Label><br /><br />

        <asp:Label ID="genderLabel" runat="server" Text="Gender: " Font-Bold="true"></asp:Label>
        <asp:Label ID="genderText" runat="server" Text=""></asp:Label><br /><br />

        <asp:Label ID="fromLabel" runat="server" Text="From: " Font-Bold="true"></asp:Label>
        <asp:Label ID="fromText" runat="server" Text=""></asp:Label><br /><br />

        <asp:Label ID="toLabel" runat="server" Text="To: " Font-Bold="true"></asp:Label>
        <asp:Label ID="toText" runat="server" Text=""></asp:Label><br /><br />

        <asp:Label ID="dateLabel" runat="server" Text="Date: " Font-Bold="true"></asp:Label>
        <asp:Label ID="dateText" runat="server" Text=""></asp:Label><br /><br />

        <asp:Label ID="timeLabel" runat="server" Text="Time: " Font-Bold="true"></asp:Label>
        <asp:Label ID="timeText" runat="server" Text=""></asp:Label><br /><br />

        <asp:Label ID="seatLabel" runat="server" Text="Seat Number: " Font-Bold="true"></asp:Label>
        <asp:Label ID="seatText" runat="server" Text=""></asp:Label><br /><br />


    </asp:Panel>
    <br /><br />
    <asp:Button ID="deleteButton" runat="server" Text="Delete" OnClick ="DeleteButtonClicked"/><br /><br />
    <br />

        </div>
    
</asp:Content>

