using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InsertNews_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["Login"] != null)
            {
                Label1.Text = Session["Login"].ToString();
                LinkButton1.Visible = true;
            }
            else
            {
                Label1.Text = "کاربر مهمان خوش آمدید.";
            }
        }
        catch (Exception) { }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //خروج از سیستم و خالی کردن سشن ها
        Session["Login"] = null;
        Session["Karbar"] = null;
        Session["Type"] = null;
        Response.Redirect("Default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string pic = "";

        //ثبت اخبار توسط کلاس نیوز همراه با عکس (News)
        try
        {
            if (RadioButton1.Checked)
            {
                FileUpload1.SaveAs(Server.MapPath("News_Pic") + FileUpload1.FileName);
                pic = "News_pic/" + FileUpload1.FileName;

                if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && pic != "")
                {
                    News n = new News(Session["Karbar"].ToString(), TextBox1.Text, TextBox4.Text, TextBox2.Text, TextBox3.Text, pic);
                    n.Insert();
                    Label12.Text = "خبر با موفقیت ثبت شد.";
                }

                else
                {
                    Label12.Text = "تمام اطلاعات را وارد کنید.";
                }
            }

            //ثبت اخبار توسط کلاس نیوز بدون عکس (News)
            else if (RadioButton2.Checked)
            {
                if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && pic == "")
                {
                    News n = new News(Session["Karbar"].ToString(), TextBox1.Text, TextBox4.Text, TextBox2.Text, TextBox3.Text, pic);
                    n.Insert();
                    Label12.Text = "خبر با موفقیت ثبت شد.";
                }

                else
                {
                    Label12.Text = "تمام اطلاعات را وارد کنید.";
                }
            }
        }
        catch (Exception er) { Label12.Text = er.ToString(); }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //ورود به بخش مدیریت
        Response.Redirect("Admin_Page.aspx");
    }
}