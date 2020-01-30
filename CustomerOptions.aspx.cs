using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerOptions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BookButtonClicked(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerBooking.aspx");
    }

    protected void CancelButtonClicked(object sender, EventArgs e)
    {
        Response.Redirect("~/CancelBooking.aspx");
    }

    protected void PrintButtonClicked(object sender, EventArgs e)
    {
        Response.Redirect("~/PrintBooking.aspx");
    }
    protected void LogoutButtonClicked(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerLogin.aspx");
        if(Session["User"] != null)
        {
            Session["User"] = null;
        }
    }
}