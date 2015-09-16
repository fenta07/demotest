<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/adminMaster.master"
    AutoEventWireup="true" CodeFile="ManageProduct.aspx.cs" Inherits="adminpanel_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>
        Product Manage
    </h2>
    <table cellpadding="5px" cellspacing="5px" style="margin: 0px auto;">
        <caption>
            Add Product</caption>
        <tr>
            <td>
                Product Name
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Product Image
            </td>
            <td>
                <asp:FileUpload ID="fupload" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Price
            </td>
            <td>
                <asp:TextBox ID="txtprice" runat="server" Width="100px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Description
            </td>
            <td>
                <asp:TextBox ID="txtdesc" runat="server" Width="300px" Rows="5" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Clear" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="gridProduct" runat="server" Width="100%" BackColor="White" BorderColor="#CCCCCC"
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal"
        AutoGenerateColumns="False">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table width="100%">
                        <tr>
                            <td rowspan="4" align="right" style="width: 20%">
                                <asp:Image ID="img" runat="server" Height="103px" Width="117px" />
                                <asp:Label Visible="false" ID="Label2" runat="server" Text="<%# bind('url_img') %>"></asp:Label>
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
    </asp:GridView>
</asp:Content>
