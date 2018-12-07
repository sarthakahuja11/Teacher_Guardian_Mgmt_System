using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Default5 : System.Web.UI.Page
{
    string student_id;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    public void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        /*  if (e.Row.RowType == DataControlRowType.DataRow)
          {

              string str = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "S_name"));

              Label1.Text = str;
          }
      */
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        //Label1.Text = "id of student="+row.Cells[1].Text;
        student_id = row.Cells[1].Text;
        
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=Teacherguardian;Integrated Security=True;Pooling=False";
        try
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from Teacher", con);
            SqlDataReader reader = comm.ExecuteReader();
            while(reader.Read())
            {
                string teacherid = TextBox1.Text;
                if (reader["Id"].ToString() == teacherid)
                {
                    
                    Label1.Text = "Correct ID";
                    reader.Close();
                    comm = new SqlCommand("insert into Requests values(@tid,@sid)",con);
                    comm.Parameters.AddWithValue("@tid",teacherid);
                    comm.Parameters.AddWithValue("@sid",student_id);
                    comm.ExecuteReader();

                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Request Sent" + "');", true);
                    break;
                }
                else
                    Label1.Text = "Incorrect Teacher ID";
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
        Response.Redirect("Default4.aspx");
    }

}