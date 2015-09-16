<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true"
    CodeFile="SignIn.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        input
        {
            border-radius: 10px;
            padding: 5px;
        }
        #fpass
        {
            position: relative;
            width: 500px;
            top: 50px;
            margin: 40px auto;
            padding: 20px;
            background-color: White;
            color: Black;
            border-radius: 10px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">

        $(document).ready(
            function () {
                $("#fpass").fadeOut(0);
                $("#go").click(function () {
                    $("#sin").fadeOut(0, function () {
                        $("#fpass").fadeIn(1000);
                    });
                });

                $("#close").click(
                    function () {
                        $("#fpass").fadeOut(0, function () {
                            $("#sin").fadeIn(1000);
                        }); 
                    }
                );
            }
        );
            
        
       
        
        
    </script>
    <div id="fpass">
        <table width="100%">
            <caption>
                <table width="100%">
                    <tr>
                        <td>
                            Password Recovery
                        </td>
                        <td align="right">
                            <a id="close" href="#">Close X</a>
                        </td>
                    </tr>
                </table>
            </caption>
            <tr>
                <td align="right">
                    Enter Email Id
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="255px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2">
                    <asp:Button ID="btnRecove" runat="server" Text="Recover" />
                </td>
            </tr>
        </table>
    </div>
    <table id="sin" width="50%" style="margin: 0px auto;" cellpadding="10px" cellspacing="10px">
        <caption style="font-size: large">
            Sign In Here
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
                Password
            </td>
            <td>
                <asp:TextBox ID="txtpass1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                Forget Password ? Cleck <a id="go" onclick="ShowIt" href="#fpass">Here</a>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="btnSignIn" runat="server" Text="Sign In" Width="150px" 
                    onclick="btnSignIn_Click" />
            </td>
            <td>
                <asp:Button ID="btnClear" runat="server" Text="Clear" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>
