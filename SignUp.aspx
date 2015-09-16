<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true"
    CodeFile="SignUp.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
    input
    {
        border-radius:10px;
        padding:5px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="50%" style="margin: 0px auto;" cellpadding="10px" cellspacing="10px">
        <caption style="font-size: large">
            Sign Up Here
        </caption>
        <tr>
            <td align="right">
                User Name
            </td>
            <td>
                <asp:TextBox ID="txtuname" runat="server" Width="155px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                Email Id
            </td>
            <td>
                <asp:TextBox ID="txteid" runat="server" Width="221px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                Password
            </td>
            <td>
                <asp:TextBox ID="txtpass1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                Confirm Password
            </td>
            <td>
                <asp:TextBox ID="txtpass2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" Width="150px" 
                    onclick="btnSignUp_Click" />
            </td>
            <td>
                <asp:Button ID="btnClear" runat="server" Text="Clear" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>
