<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News_Page.aspx.cs" Inherits="News_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 20px;
        }
        .style8
        {
            height: 20px;
            width: 98px;
        }
        .style9
        {
            width: 98px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="text-align: center">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/PIC/TXT NEWS LABEL.JPG" 
                    style="text-align: center" />
            </td>
        </tr>
        <tr>
            <td align="center" dir="rtl">
                <asp:DataList ID="DataList2" runat="server" CellPadding="4" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#E3EAEB" />
                    <ItemTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td align="left" dir="rtl" class="style8">
                                    <asp:Label ID="Label2" runat="server" Font-Names="tahoma" Font-Size="Small" 
                                        Text="تاریخ ثبت خبر :"></asp:Label>
                                </td>
                                <td align="right" class="style7" dir="rtl">
                                    <asp:Label ID="Label4" runat="server" Font-Names="tahoma" Font-Size="Small" 
                                        Text='<%# Eval("Ndate") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style9" dir="rtl">
                                    <asp:Label ID="Label3" runat="server" Font-Names="tahoma" Font-Size="Small" 
                                        Text="ساعت ثبت خبر :"></asp:Label>
                                </td>
                                <td align="right" dir="rtl">
                                    <asp:Label ID="Label5" runat="server" Font-Names="tahoma" Font-Size="Small" 
                                        Text='<%# Eval("Ntime") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" dir="rtl" style="text-align: center">
                                    <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("pic") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" dir="rtl" colspan="2">
                                    <asp:TextBox ID="TextBox2" runat="server" BackColor="LightBlue" 
                                        BorderColor="#000066" BorderStyle="Solid" Font-Names="tahoma" 
                                        Font-Size="Medium" ForeColor="#000066" Height="288px" ReadOnly="True" 
                                        Text='<%# Eval("txt") %>' TextMode="MultiLine" Width="764px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td align="center" dir="rtl">
                            <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                                Font-Size="Smaller" ForeColor="Red">نظرات دانشجوها</asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" dir="rtl">
                <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    GridLines="Both">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <ItemStyle BackColor="White" ForeColor="#003399" />
                    <ItemTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td style="text-align: right">
                                    <asp:Label ID="Label2" runat="server" Font-Names="tahoma" Font-Size="Small" 
                                        Text="نام کاربر :"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label3" runat="server" Font-Names="tahoma" Font-Size="Small" 
                                        Text='<%# Eval("kname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" BackColor="LightBlue" 
                                        BorderStyle="Dashed" Font-Names="tahoma" Font-Size="Small" Height="22px" 
                                        Width="764px" Text='<%# Eval("txt") %>' BorderColor="#0099FF" 
                                        BorderWidth="1px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td align="center" dir="rtl">
                <table style="width: 100%;">
                    <tr>
                        <td align="right" class="style2" dir="rtl" style="text-align: center">
&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox3" runat="server" Font-Names="tahoma" Font-Size="Small" 
                                MaxLength="100" style="margin-right: 0px" TextMode="MultiLine" Width="507px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style2" dir="rtl" style="text-align: center">
                            <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                                Font-Size="Smaller" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style2" dir="rtl" style="text-align: center">
                            <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" 
                                onclick="Button1_Click" Text="ارسال نظر" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

