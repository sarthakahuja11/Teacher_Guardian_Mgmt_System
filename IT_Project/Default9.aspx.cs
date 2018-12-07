using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Default9 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=Teacherguardian;Integrated Security=True;Pooling=False";
        try
        {
            con.Open();
            SqlCommand comm = new SqlCommand("INSERT Teacher (Id, teacher) VALUES (@id, @teachername)", con);
            comm.Parameters.AddWithValue("@id",TextBox1.Text);
            comm.Parameters.AddWithValue("@teachername", TextBox2.Text);
            int i = comm.ExecuteNonQuery();
            if (i != 0)
                Label1.Text = "Registered successfully";
            string url = "Default3.aspx?id=" + Server.UrlEncode(TextBox1.Text);
            Response.Redirect(url);


        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }

    }
}