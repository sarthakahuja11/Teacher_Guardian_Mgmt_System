using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default7 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if(Request.Cookies["Username"]!=null && Request.Cookies["Password"] != null)
            {
                TextBox1.Text = Request.Cookies["Username"].Value;
                TextBox2.Attributes["value"] = Request.Cookies["Username"].Value;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //ok button

        string id = TextBox1.Text;
        string pass = TextBox2.Text;
        if (id == "admin" && pass == "admin")
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["Username"].Expires = DateTime.Now.AddMinutes(2);
                Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(2);

            }
            else
            {
                Response.Cookies["Username"].Expires = DateTime.Now.AddMinutes(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(-1);
           
            }
            Response.Cookies["Username"].Value = TextBox1.Text.Trim();
            Response.Cookies["Password"].Value = TextBox2.Text.Trim();

            Response.Redirect("Default8.aspx");
        }
        else
        {
            int count;
            if (Session["tries"] == null)
            {
                Session["tries"] = 1;
                count = 1;
            }
            else
            {
                count = (int)Session["tries"];
                count += 1;
                Session["tries"] = count;
                if (count >= 3)
                {
                    TextBox1.Enabled = false;
                    TextBox2.Enabled = false;
                    Button1.Enabled = false;
                    Button2.Enabled = false;
                }
            }
            int x = 3 - count;
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Incorrect username/password. You can try " +x+" more times " +"');", true);
            //Response.Redirect("Default10.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default11.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default10.aspx");
    }
}