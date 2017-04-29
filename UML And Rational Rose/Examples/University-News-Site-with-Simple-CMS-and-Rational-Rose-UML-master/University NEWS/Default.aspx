<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="text-align: center">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/PIC/NWES LABEL.jpg" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                    Font-Size="Smaller" ForeColor="#000066"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="tahoma" 
                    Font-Size="Small" onclick="LinkButton1_Click" Visible="False">خروج</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                    <asp:TextBox ID="TextBox1" runat="server" Width="286px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                        ImageUrl="~/PIC/view.png" Width="20px" CausesValidation="False" 
                    onclick="ImageButton1_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="style4">
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Smaller" ForeColor="Red" Visible="False">نتیجه جستجو :</asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="style4">
                <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                                        Font-Size="Smaller" ForeColor="Red">کد خبر :</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                                        Font-Size="Smaller" ForeColor="Red" Text='<%# Eval("news#") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                                        Font-Size="Smaller" ForeColor="Red">عنوان خبر :</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                                        Font-Size="Smaller" ForeColor="Red" Text='<%# Eval("title") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="news#" DataSourceID="News" Font-Names="Tahoma" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Font-Size="Small">
                    <Columns>
                        <asp:BoundField DataField="news#" HeaderText="کد خبر" InsertVisible="False" 
                            ReadOnly="True" SortExpression="news#" />
                        <asp:BoundField DataField="bname" HeaderText="بخش" SortExpression="bname" />
                        <asp:BoundField DataField="title" HeaderText="عنوان خبر" 
                            SortExpression="title" />
                        <asp:CommandField SelectText="متن خبر" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="News" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Uni_NewsConnectionString %>" 
                    SelectCommand="SELECT News.news#, News.title, Users.Bname FROM News INNER JOIN Users ON News.karbar = Users.karbar ORDER BY News.news# DESC">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    onclick="Button1_Click" Text="صفحه ثبت خبر" Visible="False" />
            </td>
        </tr>
    </table>
</asp:Content>

