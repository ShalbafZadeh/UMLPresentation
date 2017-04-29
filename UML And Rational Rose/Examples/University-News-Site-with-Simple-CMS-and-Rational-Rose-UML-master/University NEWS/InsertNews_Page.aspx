<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InsertNews_Page.aspx.cs" Inherits="InsertNews_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td align="center" colspan="3">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/PIC/INSERT NWES LABEL.JPG" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                    Font-Size="Smaller" ForeColor="#000066"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="tahoma" 
                    Font-Size="Small" onclick="LinkButton1_Click" Visible="False">خروج</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="left" dir="rtl">
            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Small" Text="عنوان خبر :"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBox1" runat="server" MaxLength="100"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" dir="rtl">
            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Small" Text="تاریخ :"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBox2" runat="server" MaxLength="15"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" dir="rtl">
            <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Small" Text="ساعت :"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBox3" runat="server" MaxLength="15"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" dir="rtl">
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Names="Tahoma" 
                    Font-Size="Small" GroupName="1" Text="عکس :" />
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" dir="rtl">
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Names="Tahoma" 
                    Font-Size="Small" GroupName="1" Text="خبر بدون عکس" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" dir="rtl">
            <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Small" Text="متن خبر :"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
            <asp:TextBox ID="TextBox4" runat="server" MaxLength="900" Height="159px" 
                    TextMode="MultiLine" Width="599px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
            <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" 
                onclick="Button1_Click" Text="ثبت خبر" Width="96px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Font-Names="Tahoma" 
                    onclick="Button2_Click" Text="مدیریت" Width="96px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
            <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Smaller" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

