using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class News_Page : System.Web.UI.Page
{
    SqlSelect Query = new SqlSelect();

    protected void Page_Load(object sender, EventArgs e)
    {
        //نمایش متن خبر در دیتالیست2 توسط کلاس سلکت (SqlSelect)
        try
        {
            DataList2.DataSource = Query.Select("select * from news where news# = " + Session["News_Code"] + "");
            DataList2.DataMember = "Query";
            DataList2.DataBind();
        }
        catch (Exception) { }

        //نمایش متن نظرات در دیتالیست1 توسط کلاس سلکت (SqlSelect)
        try
        {
            DataList1.DataSource = Query.Select("select * from Comment inner join users on comment.karbar = users.karbar where news# = " + Session["News_Code"] + "");
            DataList1.DataMember = "Query";
            DataList1.DataBind();
        }
        catch (Exception) { }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //ثبت نظر توسط کلاس کامنت (Comment)
        try
        {
            if (Session["Karbar"] != null)
            {
                Comment c = new Comment(Session["News_Code"].ToString(), Session["Karbar"].ToString(), TextBox3.Text);
                c.Insert();

                DataList1.DataSource = Query.Select("select * from Comment inner join users on comment.karbar = users.karbar where news# = " + Session["News_Code"] + "");
                DataList1.DataMember = "Query";
                DataList1.DataBind();
            }
            else
            {
                Label12.Text = "لطفا برای ثبت نظر خود ، ابتدا وارد سیستم شوید.";
            }
        }
        catch (Exception) { }
    }
}