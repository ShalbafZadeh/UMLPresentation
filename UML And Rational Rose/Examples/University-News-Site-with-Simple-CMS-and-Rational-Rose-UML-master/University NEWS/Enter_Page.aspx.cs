using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Enter_Page : System.Web.UI.Page
{
    SqlSelect Query = new SqlSelect();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            //ورود مسئولان دانشگاه
            if (RbEmployee.Checked)
            {
                int item = Query.Login("select count(karbar) from Users where karbar='" + TextBox2.Text + "' and pass=" + int.Parse(TextBox3.Text) + " and type=1");
                if (item != 0)
                {
                    DataTable name = Query.Select("select bname,karbar from users where karbar='" + TextBox2.Text + "' and pass=" + int.Parse(TextBox3.Text) + " and type=1");
                    Session["Login"] = name.Rows[0]["bname"].ToString();
                    Session["Karbar"] = name.Rows[0]["karbar"].ToString();
                    Session["Type"] = "1";
                    Response.Redirect("InsertNews_Page.aspx");
                }
                else Label1.Text = "نام کاربری یا کلمه عبور صحیح نیست";
            }

            //ورود دانشجویان
            if (RbStudent.Checked)
            {
                int item = Query.Login("select count(karbar) from Users where karbar='" + TextBox2.Text + "' and pass=" + int.Parse(TextBox3.Text) + " and type=2");
                if (item != 0)
                {
                    DataTable name = Query.Select("select kname,karbar from users where karbar='" + TextBox2.Text + "' and pass=" + int.Parse(TextBox3.Text) + " and type=2");
                    Session["Login"] = name.Rows[0]["kname"].ToString();
                    Session["Karbar"] = name.Rows[0]["karbar"].ToString();
                    Response.Redirect("Default.aspx");
                }
                else Label1.Text = "نام کاربری یا کلمه عبور صحیح نیست";
            }
        }
        catch (Exception er)
        {
            Label1.Text = er.ToString();
        }
    }
}