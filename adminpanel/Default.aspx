<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/adminMaster.master"
    AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="adminpanel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>
        Welcome To Admin Dashbord,
    </h1>
    <table style="margin: 0px auto;background-color:White;color:Black;" cellpadding="20px" cellspacing="10px">
        <caption>
            <h2>Status</h2>
        </caption>
        <tr>
            <td  align="right">
                Total Item
            </td>
            <td id="titem" runat="server" align="left">
            </td>
        </tr>
        <tr>
            <td align="right">
                Available Item
            </td>
            <td id="aitem" runat="server"  align="left">
            </td>
        </tr>
        <tr>
            <td  align="right">
                Total Users
            </td>
            <td id="tuser" runat="server"  align="left" >
            </td>
        </tr>
    </table>
</asp:Content>
