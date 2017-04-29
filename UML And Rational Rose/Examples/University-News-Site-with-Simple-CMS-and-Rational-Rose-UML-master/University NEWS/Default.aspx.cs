using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlSelect Query = new SqlSelect();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //اگر کاربری وارد شود نام کاربر در بالای سایت نمایش داده میشود
            if (Session["Login"] != null)
            {
                Label1.Text = Session["Login"].ToString();
                LinkButton1.Visible = true;
            }
            else
            {
                Label1.Text = "کاربر مهمان خوش آمدید.";
            }

            //اگر کاربر از مسئولان دانشگاه باشد لینک مدیریت فعال میشود
            if (Session["Type"].ToString() == "1")
            {
                Button1.Visible = true;
            }
            else
            {
                Button1.Visible = false;
            }
        }
        catch (Exception) { }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //هنگام خروج تمام سشن ها خالی میشود
        Session["Login"] = null;
        Session["Karbar"] = null;
        Label1.Text = "کاربر مهمان خوش آمدید.";
        LinkButton1.Visible = false;
        Button1.Visible = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //انتخاب خبر برای نمایش متن خبر
        Session["News_Code"] = GridView1.SelectedRow.Cells[0].Text.ToString();
        Response.Redirect("News_Page.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            //جستجوی اخبار بر اساس متن خبر
            SqlSelect search = new SqlSelect();
            DataTable result = search.Select("select * from news where txt like '%" + TextBox1.Text + "%'");
            Label2.Visible = true;
            DataList1.DataSource = result;
            DataList1.DataMember = "Search";
            DataList1.DataBind();
        }
        catch (Exception er)
        {
            Label2.Visible = true;
            Label2.Text = er.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //ورود به بخش مدیریت
        Response.Redirect("InsertNews_Page.aspx");
    }
}