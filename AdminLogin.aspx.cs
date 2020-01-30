using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "Sahil" && TextBox2.Text == "12345")
            Response.Redirect("AdminHome.aspx");
        else
            Label2.Visible = true;
    }

    protected void BackButtonClicked(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}