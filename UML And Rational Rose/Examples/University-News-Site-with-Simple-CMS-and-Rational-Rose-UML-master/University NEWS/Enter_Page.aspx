<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Enter_Page.aspx.cs" Inherits="Enter_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 110px;
    }
    .style7
    {
        width: 394px;
    }
    .style8
    {
        width: 91px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/PIC/Enter LABEL.JPG" />
        </td>
    </tr>
    <tr>
        <td class="style7" style="text-align: left">
            <asp:Label ID="Label2" runat="server" Font-Names="tahoma" Font-Size="Small" 
                Text="نام کاربری :"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="نام کاربری را وارد کنید" 
                Font-Names="Tahoma" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7" style="text-align: left">
            <asp:Label ID="Label3" runat="server" Font-Names="tahoma" Font-Size="Small" 
                style="text-align: left" Text="کلمه عبور :"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="کلمه عبور را وارد کنید" 
                Font-Names="Tahoma" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            <asp:RadioButton ID="RbEmployee" runat="server" Font-Names="tahoma" 
                Font-Size="Small" GroupName="1" Text="کارمند" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            <asp:RadioButton ID="RbStudent" runat="server" Font-Names="tahoma" 
                Font-Size="Small" GroupName="1" Text="دانشجو" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style6">
            <asp:Button ID="Button1" runat="server" Font-Names="tahoma" 
                onclick="Button1_Click1" Text="ورود به سایت" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style6">
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Smaller" ForeColor="Red"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

