using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ozviat_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //ثبت اعضا در وبسایت توسط کلاس اعضا (Membership)
        try 
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
            {
                Membership m = new Membership(TextBox3.Text, "", TextBox4.Text, TextBox1.Text, TextBox2.Text, TextBox6.Text, TextBox7.Text, "2");
                m.Insert();
                Label12.Text = "ثبت نام با موفقیت انجام شد.";
            }
            else
            {
                Label12.Text = "لطفا تمام اطلاعات را وارد کنید.";
            }
        }
        catch (Exception) { }
    }
}