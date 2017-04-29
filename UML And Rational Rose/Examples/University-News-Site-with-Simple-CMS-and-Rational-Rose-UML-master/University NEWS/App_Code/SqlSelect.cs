using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class SqlSelect
{
    SqlConnection con = new SqlConnection("data source=(local);initial catalog=Uni_News;integrated security=true");

    public SqlSelect() { }

    public DataTable Select(string query_txt)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query_txt, con);
        DataSet ds = new DataSet();
        ds.Clear();
        da.Fill(ds, "Query");
        con.Close();
        return ds.Tables["Query"];
    }

    public int Login(string query_txt)
    {
        con.Open();
        SqlCommand com = new SqlCommand(query_txt, con);
        int item = (int)com.ExecuteScalar();
        con.Close();
        return item;
    }
}