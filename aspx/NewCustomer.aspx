<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="NewCustomer.aspx.cs" Inherits="NewCustomer" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1">
        <div align="center">
            <br /><br /><h2>REGISTER USER: <br /><br /></h2>
            Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
        
        
            Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
        
            Retype Password:
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox7" ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
        
            <br />
        
            <br />Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email format does not match" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        
            <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Phone Number out of range" ForeColor="Red" MaximumValue="9999999999" MinimumValue="7000000000"></asp:RangeValidator>
        
            <br />
        
            <br />Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>M</asp:ListItem>
                <asp:ListItem>F</asp:ListItem>
                
            </asp:DropDownList>
            <br />
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create User" />
            </div>
    </form>
            
            
</asp:Content>


