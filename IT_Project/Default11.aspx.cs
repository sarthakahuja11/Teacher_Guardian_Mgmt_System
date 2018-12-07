using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Default11 : System.Web.UI.Page
{
    string tid, sid,tnam;
    string nam;
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //student search
        sid = TextBox2.Text;
        nam = TextBox3.Text;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=Teacherguardian;Integrated Security=True;Pooling=False";
        try
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from Student", con);
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {

                if ((reader["Sid"].ToString() == sid) || (reader["S_name"].ToString() == nam))
                {
                    string allt = "allotted";
                    if (reader["Status"].ToString() == allt)
                        Label1.Text = "Student with ID:" + reader["Sid"] + "," + reader["S_name"] + " has been allotted to teacher with ID:" + reader["Id"];
                    else
                        Label1.Text = "Student with ID:" + reader["Sid"] + "," + reader["S_name"] + " has not been allotted to a teacher";
                    break;
                }
                else
                    Label1.Text = "Incorrect Student ID entered";
            }


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

    protected void Button2_Click(object sender, EventArgs e)
    {
        //teacher search
        tid = TextBox1.Text;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=Teacherguardian;Integrated Security=True;Pooling=False";
        try
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from Student", con);
            SqlDataReader reader = comm.ExecuteReader();
            Label1.Text = "the ID of the students under the searched teacher is: ";
            while (reader.Read())
            {

                if ((reader["Id"].ToString() == tid))
                {
                    Label1.Text = Label1.Text+" "+reader["Sid"] + ",";
                }
           
            }

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
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default7.aspx");
    }

}