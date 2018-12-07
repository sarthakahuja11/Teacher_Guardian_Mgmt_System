using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //ok button

        string id = TextBox1.Text;
        string pass = TextBox2.Text;
        if(id=="user" && pass=="password")
        {
            Response.Redirect("Default3.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "incorrect username/password" + "');", true);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //register button
        Response.Redirect("Default9.aspx");
    }
}