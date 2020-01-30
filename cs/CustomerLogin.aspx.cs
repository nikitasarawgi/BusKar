
        using System;
        using System.Collections.Generic;
        using System.Linq;
        using System.Web;
        using System.Web.UI;
        using System.Web.UI.WebControls;
        using System.Data.SqlClient;
        using System.Data;
using System.Web.Configuration;




    public partial class CustomerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        invalidLabel.Visible = false;
        }

        protected void CustomerLoginButtonClicked(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
            string s = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Travels;Integrated Security=True";
                using (SqlConnection con = new SqlConnection(s))
                {
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Customers where username=@username", con);
                    cmd.Parameters.AddWithValue("@username", usernameText.Text);

                    try
                    {
                        con.Open();
                        SqlDataReader reader;
                        reader = cmd.ExecuteReader();
                        reader.Read();
                        if (reader["password"].ToString() == passwordText.Text)
                        {
                            Session["User"] = usernameText.Text;
                            Response.Redirect("~/CustomerOptions.aspx");
                        }
                        else
                        {
                            Session["User"] = null;
                        invalidLabel.Visible = true;
                            invalidLabel.Text = "Invalid username and/or passowrd!";
                        }
                    }
                    catch (Exception ex)
                    {
                    invalidLabel.Visible = true;
                    invalidLabel.Text = "FDSHGWFSHGS";
                    }
                }
            }
        }

        protected void BackButtonClicked(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    }

    
