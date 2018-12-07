using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        //free slots
        Response.Redirect("Default5.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //filled slots
        Response.Redirect("Default6.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default10.aspx");
    }
}