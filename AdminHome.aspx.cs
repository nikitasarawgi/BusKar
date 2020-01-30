using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminAddBus.aspx");
    }

    protected void BackButtonClicked(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminLogin.aspx");
    }
}