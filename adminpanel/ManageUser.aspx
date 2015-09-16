<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/adminMaster.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="adminpanel_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h3>User's Details</h3>
    <asp:GridView ID="gridUsers" runat="server" Width="100%" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" 
        DataKeyNames="pkeid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="pkeid" HeaderText="Email Id" ReadOnly="True" 
                SortExpression="pkeid" />
            <asp:BoundField DataField="uname" HeaderText="User Name" 
                SortExpression="uname" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        SelectCommand="SELECT * FROM [tblUser]"></asp:SqlDataSource>
</asp:Content>

