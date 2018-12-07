using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        Page.Theme = "Maintheme";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //teacher

        Response.Redirect("Default2.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //administrator
        Response.Redirect("Default7.aspx");

    }
}