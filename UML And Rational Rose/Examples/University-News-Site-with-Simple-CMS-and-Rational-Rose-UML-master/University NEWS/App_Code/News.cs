using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class News
{
    string karbar, title, txt, date, time, pic;

    public News(string karbarVal, string titleVal, string txtVal, string dateVal, string timeVal, string picVak)
    {
        karbar = karbarVal;
        title = titleVal;
        txt = txtVal;
        date = dateVal;
        time = timeVal;
        pic = picVak;
    }

    public void Insert()
    {
        SqlConnection con = new SqlConnection("data source=(local);initial catalog=Uni_News;integrated security=true");
        con.Open();
        SqlCommand com = new SqlCommand("insert into News (karbar,title,txt,Ndate,Ntime,pic)values(@karbar,@title,@txt,@Ndate,@Ntime,@pic)", con);
        com.CommandType = CommandType.Text;
        com.Parameters.AddWithValue("@karbar", karbar);
        com.Parameters.AddWithValue("@title", title);
        com.Parameters.AddWithValue("@txt", txt);
        com.Parameters.AddWithValue("@Ndate", date);
        com.Parameters.AddWithValue("@Ntime", time);
        com.Parameters.AddWithValue("@pic", pic);
        com.ExecuteNonQuery();
        con.Close();
    }
}