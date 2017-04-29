<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ozviat_Page.aspx.cs" Inherits="Ozviat_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: left;
            width: 397px;
        }
        .style6
        {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/PIC/Ozviat LABEL.JPG" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Small" Text="نام :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" MaxLength="15"></asp:TextBox>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Small" Text="نام خانوادگی :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" MaxLength="20"></asp:TextBox>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Small" Text="نام کاربری :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" MaxLength="15"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="فیلد نام کاربری را پر کنید" 
                Font-Names="Tahoma" Font-Size="Smaller" ForeColor="Red" 
                style="text-align: right"></asp:RequiredFieldValidator>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Small" Text="کلمه عبور :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" MaxLength="7" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="فیلد کلمه عبور را پر کنید" 
                Font-Names="Tahoma" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Small" Text="تکرار کلمه عبور :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" MaxLength="7" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                ErrorMessage="کلمه عبور هماهنگ نیست!" Font-Names="Tahoma" Font-Size="Smaller" 
                ForeColor="Red"></asp:CompareValidator>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Small" Text="ایمیل :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" MaxLength="40"></asp:TextBox>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Small" Text="تلفن همراه :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" MaxLength="11"></asp:TextBox>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Smaller" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" 
                onclick="Button1_Click" Text="ثبت عضویت" />
        </td>
    </tr>
</table>
</asp:Content>

