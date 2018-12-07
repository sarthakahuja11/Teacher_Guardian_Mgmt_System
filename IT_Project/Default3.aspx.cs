using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = "Thank you for registering " + Server.UrlDecode(Request.QueryString["id"]) + " . Please check the availability of slots.";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //check availability
       
        Response.Redirect("Default4.aspx");

    }

   
}