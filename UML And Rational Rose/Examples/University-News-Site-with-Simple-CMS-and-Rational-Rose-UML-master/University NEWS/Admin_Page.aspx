<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Page.aspx.cs" Inherits="Admin_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: center;
        }
        .style5
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style4" dir="rtl" colspan="4">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/PIC/ADMIN LABEL.JPG" />
            </td>
        </tr>
        <tr>
            <td class="style4" dir="rtl" align="right" colspan="4" 
                style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                    Font-Size="Smaller" ForeColor="#000066"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="tahoma" 
                    Font-Size="Small" onclick="LinkButton1_Click" Visible="False" 
                    CausesValidation="False">خروج</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style4" dir="rtl">
                <asp:Button ID="Button1" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    Text="ثبت و ویرایش اطلاعات هر بخش" CausesValidation="False" 
                    onclick="Button1_Click1" Enabled="False" />
            </td>
            <td class="style4" dir="rtl">
                <asp:Button ID="Button2" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    Text="مدیریت نظرات کاربران" CausesValidation="False" 
                    onclick="Button2_Click" />
            </td>
            <td class="style4" dir="rtl">
                <asp:Button ID="Button4" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    Text="مدیریت کاربران" CausesValidation="False" onclick="Button4_Click" 
                    Enabled="False" />
            </td>
            <td class="style4" dir="rtl">
                <asp:Button ID="Button3" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    Text="مدیریت اخبار ثبت شده" CausesValidation="False" 
                    onclick="Button3_Click" />
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style5" dir="rtl" align="center" colspan="2" 
                style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" dir="rtl" align="center" colspan="2" 
                style="text-align: center">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="c#" DataSourceID="Comment" Font-Names="Tahoma" 
                    Font-Size="Small" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="c#" HeaderText="کد نظر" InsertVisible="False" 
                            ReadOnly="True" SortExpression="c#" />
                        <asp:BoundField DataField="news#" HeaderText="کد خبر" SortExpression="news#" />
                        <asp:BoundField DataField="karbar" HeaderText="نام کاربر" 
                            SortExpression="karbar" />
                        <asp:BoundField DataField="txt" HeaderText="متن نظر" SortExpression="txt" />
                        <asp:CommandField DeleteText="حذف" HeaderText="حذف نظر" 
                            ShowDeleteButton="True" />
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
            </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl" align="center" colspan="2" 
                style="text-align: center">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="karbar" DataSourceID="Users" Font-Names="Tahoma" 
                    Font-Size="Small" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="karbar" HeaderText="نام کاربری" ReadOnly="True" 
                            SortExpression="karbar" />
                        <asp:BoundField DataField="kname" HeaderText="نام" SortExpression="kname" />
                        <asp:BoundField DataField="kfamily" HeaderText="نام خانوادگی" 
                            SortExpression="kfamily" />
                        <asp:BoundField DataField="pass" HeaderText="کلمه عبور" SortExpression="pass" />
                        <asp:BoundField DataField="email" HeaderText="ایمیل" SortExpression="email" />
                        <asp:BoundField DataField="tel" HeaderText="تلفن همراه" SortExpression="tel" />
                        <asp:CommandField CausesValidation="False" EditText="ویرایش" 
                            HeaderText="ویرایش اطلاعات" ShowEditButton="True" />
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
            </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl" align="center" colspan="2" 
                style="text-align: center">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="news#" DataSourceID="News" Font-Names="Tahoma" 
                    Font-Size="Small" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="news#" HeaderText="شماره خبر" InsertVisible="False" 
                            ReadOnly="True" SortExpression="news#" />
                        <asp:BoundField DataField="karbar" HeaderText="نام کاربری" 
                            SortExpression="karbar" />
                        <asp:BoundField DataField="title" HeaderText="عنوان خبر" 
                            SortExpression="title" />
                        <asp:BoundField DataField="txt" HeaderText="متن خبر" SortExpression="txt" />
                        <asp:BoundField DataField="Ndate" HeaderText="تاریخ" SortExpression="Ndate" />
                        <asp:BoundField DataField="Ntime" HeaderText="ساعت" SortExpression="Ntime" />
                        <asp:BoundField DataField="pic" HeaderText="آدرس عکس" SortExpression="pic" />
                        <asp:CommandField CausesValidation="False" EditText="ویرایش" 
                            HeaderText="ویرایش خبر" ShowEditButton="True" />
                        <asp:CommandField CausesValidation="False" DeleteText="حذف" 
                            HeaderText="حذف خبر" ShowDeleteButton="True" />
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
            </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl" align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="karbar" DataSourceID="Section" 
                    Font-Names="Tahoma" Font-Size="Small" style="text-align: center" 
                    Visible="False">
                    <Columns>
                        <asp:BoundField DataField="karbar" HeaderText="نام کاربری" ReadOnly="True" 
                            SortExpression="karbar" />
                        <asp:BoundField DataField="Bname" HeaderText="نام بخش" SortExpression="Bname" />
                        <asp:BoundField DataField="kname" HeaderText="نام مسئول" 
                            SortExpression="kname" />
                        <asp:BoundField DataField="kfamily" HeaderText="نام خانوادگی" 
                            SortExpression="kfamily" />
                        <asp:BoundField DataField="pass" HeaderText="کلمه عبور" SortExpression="pass" />
                        <asp:BoundField DataField="email" HeaderText="ایمیل" SortExpression="email" />
                        <asp:BoundField DataField="tel" HeaderText="تلفن همراه" SortExpression="tel" />
                        <asp:CommandField CausesValidation="False" EditText="ویرایش" 
                            HeaderText="ویرایش اطلاعات" ShowEditButton="True" />
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
            </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl" align="center" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" dir="rtl">
                <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                    Font-Size="Small" Text="نام بخش :" Visible="False"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="TextBox8" runat="server" MaxLength="15" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="فیلد نام بخش را پر کنید" 
                    Font-Names="Tahoma" Font-Size="Smaller" ForeColor="Red" 
                    style="text-align: right"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl">
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                    Font-Size="Small" Text="نام :" Visible="False"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="15" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl">
                <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                    Font-Size="Small" Text="نام خانوادگی :" Visible="False"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="20" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl">
                <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                    Font-Size="Small" Text="نام کاربری :" Visible="False"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="15" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="فیلد نام کاربری را پر کنید" 
                    Font-Names="Tahoma" Font-Size="Smaller" ForeColor="Red" 
                    style="text-align: right"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl">
                <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                    Font-Size="Small" Text="کلمه عبور :" Visible="False"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="7" TextMode="Password" 
                    Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="فیلد کلمه عبور را پر کنید" 
                    Font-Names="Tahoma" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl">
                <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                    Font-Size="Small" Text="تکرار کلمه عبور :" Visible="False"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="7" TextMode="Password" 
                    Visible="False"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                    ErrorMessage="کلمه عبور هماهنگ نیست!" Font-Names="Tahoma" Font-Size="Smaller" 
                    ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl">
                <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                    Font-Size="Small" Text="ایمیل :" Visible="False"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="TextBox6" runat="server" MaxLength="40" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl">
                <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                    Font-Size="Small" Text="تلفن همراه :" Visible="False"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="TextBox7" runat="server" MaxLength="11" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td dir="rtl">
                &nbsp;</td>
            <td dir="rtl">
                <asp:Button ID="Button5" runat="server" Font-Names="Tahoma" 
                    onclick="Button1_Click" Text="ثبت عضویت" Visible="False" />
            </td>
        </tr>
        <tr>
            <td dir="rtl" align="center" colspan="2">
            <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Tahoma" 
                Font-Size="Smaller" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" dir="rtl">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" dir="rtl">
                <asp:SqlDataSource ID="News" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Uni_NewsConnectionString %>" 
                    DeleteCommand="DELETE FROM News WHERE (news# = @news#)" 
                    SelectCommand="SELECT * FROM [News] WHERE ([karbar] = @karbar)" 
                    UpdateCommand="UPDATE News SET title = @title, txt = @txt, Ndate = @ndate, Ntime = @ntime, pic = @pic WHERE (news# = @news#)">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="GridView4" Name="news#" 
                            PropertyName="SelectedValue" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="karbar" SessionField="Karbar" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="GridView4" Name="title" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView4" Name="txt" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView4" Name="ndate" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView4" Name="ntime" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView4" Name="pic" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView4" Name="news#" 
                            PropertyName="SelectedValue" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="Section" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Uni_NewsConnectionString %>" 
                    DeleteCommand="DELETE FROM Users WHERE (karbar = @karbar)" 
                    SelectCommand="SELECT [karbar], [Bname], [pass], [kname], [kfamily], [email], [tel] FROM [Users] WHERE ([type] = @type)" 
                    UpdateCommand="UPDATE Users SET Bname = @bname, kname = @kname, kfamily = @kfamily, pass = @pass, email = @email, tel = @tel WHERE (karbar = @karbar)">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="karbar" 
                            PropertyName="SelectedValue" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="type" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="bname" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView1" Name="kname" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView1" Name="kfamily" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView1" Name="pass" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView1" Name="email" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView1" Name="tel" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView1" Name="karbar" 
                            PropertyName="SelectedValue" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="Users" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Uni_NewsConnectionString %>" 
                    DeleteCommand="DELETE FROM Users WHERE (karbar = @karbar)" 
                    SelectCommand="SELECT [karbar], [pass], [kname], [kfamily], [email], [tel] FROM [Users] WHERE ([type] = @type)" 
                    UpdateCommand="UPDATE Users SET kname = @kname, kfamily = @kfamily, pass = @pass, tel = @tel, email = @email WHERE (karbar = @karbar)">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="GridView3" Name="karbar" 
                            PropertyName="SelectedValue" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="type" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="GridView3" Name="kname" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView3" Name="kfamily" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView3" Name="pass" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView3" Name="tel" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView3" Name="email" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="GridView3" Name="karbar" 
                            PropertyName="SelectedValue" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="Comment" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Uni_NewsConnectionString %>" 
                    DeleteCommand="DELETE FROM Comment WHERE (c# = @c#)" 
                    SelectCommand="SELECT * FROM [Comment]">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="GridView2" Name="c#" 
                            PropertyName="SelectedValue" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

