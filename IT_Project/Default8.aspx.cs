using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class Default8 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //reject button
        string ssid;
        GridViewRow row = GridView1.SelectedRow;
        ssid = row.Cells[2].Text;

        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=Teacherguardian;Integrated Security=True;Pooling=False";
        try
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete from Requests where Sid=@sid", con);
            comm.Parameters.AddWithValue("@sid",ssid);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Close();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }

        
        Response.Redirect("Default10.aspx");

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //approve button
        string ssid,ttid;
        GridViewRow row = GridView1.SelectedRow;
        ttid = row.Cells[1].Text;
        ssid = row.Cells[2].Text;

        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=Teacherguardian;Integrated Security=True;Pooling=False";
        try
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update student set Id=@id where Sid=@sid",con);
            comm.Parameters.AddWithValue("@id",ttid);
            comm.Parameters.AddWithValue("@sid",ssid);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Close();
            comm = new SqlCommand("update student set Status='allotted' where Sid=@sid", con);
            comm.Parameters.AddWithValue("@sid", ssid);
            reader = comm.ExecuteReader();
            reader.Close();
            comm = new SqlCommand("delete from Requests where Sid=@sid", con);
            comm.Parameters.AddWithValue("@sid", ssid);
            reader = comm.ExecuteReader();
            reader.Close();

        }
        catch(Exception ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }

        Response.Redirect("Default10.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default7.aspx");
    }
}
