using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class Comment
{
    string newsCode, karbar, text;

	public Comment(string newsCodeVal,string karbarVal,string textVal)
	{
        newsCode = newsCodeVal;
        karbar = karbarVal;
        text = textVal;
	}

    public void Insert()
    {
        try
        {
            SqlConnection con = new SqlConnection("data source=(local);initial catalog=Uni_News;integrated security=true");
            con.Open();
            SqlCommand com = new SqlCommand("insert into Comment (news#,karbar,txt)values(@news#,@karbar,@txt)", con);
            com.CommandType = CommandType.Text;
            com.Parameters.AddWithValue("@news#", newsCode);
            com.Parameters.AddWithValue("@karbar", karbar);
            com.Parameters.AddWithValue("@txt", text);
            com.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception) { }
    }
}