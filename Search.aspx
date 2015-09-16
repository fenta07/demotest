<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true"
    CodeFile="Search.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                Search Key Word
            </td>
            <td>
                <asp:TextBox ID="txtsearch" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnSearch" runat="server" Text="Search!" 
                    onclick="btnSearch_Click" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="gridSearch" runat="server" AutoGenerateColumns="False" 
        Width="80%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
        BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table width="100%">
                       <tr>
                            <td rowspan="4"  align="right" style="width:20%">
                                <asp:Image ID="img" runat="server" Height="103px"
                                    Width="117px" /><asp:Label Visible="false" ID="Label2" runat="server" Text="<%# bind('url_img') %>"></asp:Label>
                           
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Item Name:<asp:Label ID="lblname" runat="server" Text="<%# bind('proname') %>"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price:<asp:Label ID="lblprice" runat="server" Text="<%# bind('price') %>"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="<%# bind('descr') %>"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblstock" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
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
</asp:Content>
