using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class Membership
{
    string karbar, bname, pass, name, family, email, tel, type;

	public Membership(string karbarVal,string bnameVal,string passVal,string nameVal,string familyVal,string emailVal,string telVal,string typeVal)
	{
        karbar = karbarVal;
        bname = bnameVal;
        pass = passVal;
        name = nameVal;
        family = familyVal;
        email = emailVal;
        tel = telVal;
        type = typeVal;
	}

    public void Insert()
    {
        try
        {
            SqlConnection con = new SqlConnection("data source=(local);initial catalog=Uni_News;integrated security=true");
            con.Open();
            SqlCommand com = new SqlCommand("insert into Users (karbar,bname,pass,kname,kfamily,email,tel,type)values(@karbar,@bname,@pass,@kname,@kfamily,@email,@tel,@type)", con);
            com.CommandType = CommandType.Text;
            com.Parameters.AddWithValue("@karbar", karbar);
            com.Parameters.AddWithValue("@bname", bname);
            com.Parameters.AddWithValue("@pass", pass);
            com.Parameters.AddWithValue("@kname", name);
            com.Parameters.AddWithValue("@kfamily", family);
            com.Parameters.AddWithValue("@email", email);
            com.Parameters.AddWithValue("@tel", tel);
            com.Parameters.AddWithValue("@type", type);
            com.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception) { }
    }
}