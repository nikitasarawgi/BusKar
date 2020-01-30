<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<form id="form1">
        <asp:Button ID="backButton" runat="server" Text="Logout" OnClick="BackButtonClicked"/><br /><br />
        <div align="center">
        	<asp:GridView ID="GridView1" AllowSorting="true" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="busID" AllowPaging="true" PageSize="11" AutoGenerateColumns="False" Height="275px" Width="508px">
				<Columns>
					<asp:BoundField DataField="busID" HeaderText="busID" />
					<asp:BoundField DataField="source" HeaderText="From" />
                    <asp:BoundField DataField="destination" HeaderText="To" />
                    <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="time" HeaderText="Time" HtmlEncode="false" DataFormatString="{0:hh\:mm}" SortExpression="time"/>
                    <asp:BoundField DataField="totalSeats" HeaderText="Total Seats" />
                    <asp:BoundField DataField="availableSeats" HeaderText="Available Seats" />
					<asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
				</Columns>

			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Travels %>" SelectCommand="SELECT * FROM [Buses]" 
				UpdateCommand="UPDATE Buses SET busID=@busID,source=@source,destination=@destination,date=@date,time=@time,totalSeats=@totalSeats,
                availableSeats=@availableSeats WHERE busID=@busID" DeleteCommand="DELETE FROM Buses WHERE busID=@busID">
				<DeleteParameters>
					<asp:Parameter Name="busID" Type="Int32" />
				</DeleteParameters>
			</asp:SqlDataSource>
       
    	<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add New Entry" />
		</p>
             </div>
    </form>
</asp:Content>

