<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="adminpanel_LogIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin LogIn</title>
    <link href="../css/layout.css" rel="Stylesheet" type="text/css" />
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(
            function () {
                $(".content").fadeOut(0);
                $(".wrapper").fadeOut(0, function () {

                    $(".wrapper").fadeIn(2000, function () {

                        $(".content").fadeIn(2000);

                    });

                });

            }
        );
    </script>
</head>
<body>
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
    <form id="form1" runat="server">
    <div class="wrapper">
        <div class="header">
            <table width="100%" style="margin: 0px;">
                <tr>
                    <td style="width: 100%;">
                        <img src="../images/logos.png" style="height: 72px; width: 327px" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="content">
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
                    Admin Log In Here
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
                    <td colspan="2" align="center">
                        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Button ID="btnSignIn" runat="server" Text="Log In" Width="150px" OnClick="btnSignIn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" Width="150px" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="footer">
            Copy &copy; 2014-2015 Tops Technologies, Design By Gosai Bhadresh.
        </div>
    </div>
    </form>
</body>
</html>
