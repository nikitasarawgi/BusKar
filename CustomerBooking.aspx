<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="CustomerBooking.aspx.cs" Inherits="CustomerBooking" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Button ID="backButton" runat="server" Text="Back" OnClick="BackButtonClicked"/><br /><br />
    <asp:Panel runat="server" HorizontalAlign="Center">
        <br /><br /><br /><br />
    <asp:Label ID="Label1" runat="server" Text="CUSTOMER BOOKING" Font-Bold="true" Font-Size="Larger"></asp:Label>
        <br /><br /><br />
    <asp:Label ID="sourceLabel" runat="server" Text="Source:"></asp:Label><br />
    <asp:DropDownList ID="sourceDDL" runat="server"></asp:DropDownList><br /><br />

    <asp:Label ID="destinationLabel" runat="server" Text="Destination:"></asp:Label><br />
    <asp:DropDownList ID="destinationDDL" runat="server"></asp:DropDownList><br /><br />

    <asp:Label ID="dateLabel" runat="server" Text="Date:"></asp:Label><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Calendar ID="calendar" runat="server" OnSelectionChanged="calendar_SelectionChanged" style="margin-left: 636px; margin-right: 0px;"></asp:Calendar>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /><br />

    <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="SearchButtonClicked" AutoPostBack ="true" /><br />

    <br />
    <asp:Label ID="statusLabel" runat="server" Text=""></asp:Label>

    <asp:Label ID="timeLabel" runat="server" Text="Time:"></asp:Label>
    <asp:DropDownList ID="timeDDL" runat="server"></asp:DropDownList><br /><br />

    <asp:Label ID="seatsLabel" runat="server" Text="Seats:"></asp:Label><br />
    <asp:TextBox ID="seatsText" runat="server" Text=""></asp:TextBox><br /><br />
    <asp:RequiredFieldValidator ID="seatValidator" runat="server" ErrorMessage="Please enter seat numbers!" ControlToValidate="seatsText"></asp:RequiredFieldValidator><br />

    <asp:Label ID="priceLabel" runat="server" Text="Rs.1000/ticket"></asp:Label><br /><br />

    <asp:Button ID="bookButton" runat="server" Text="Book" OnClick="BookButtonClicked" /><br />
        </asp:Panel>

</asp:Content>

