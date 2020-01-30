using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

    public partial class PrintBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["PNR"] != null)
            {

                string pnr = Request.QueryString["PNR"];
                pnrText.Text = pnr;

                using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Travels"].ConnectionString))
                {

                    SqlCommand cmd = new SqlCommand("select * from Buses,Bookings,Customers where Buses.busID=Bookings.busID and Bookings.username=Customers.username and Bookings.pnrID=@pnr", con);
                    cmd.Parameters.AddWithValue("@pnr", pnr);

                    try
                    {
                        con.Open();

                        SqlDataReader reader = cmd.ExecuteReader();

                        reader.Read();

                        ticketpnrText.Text = reader["pnrID"].ToString();
                        nameText.Text = reader["name"].ToString();
                        phoneText.Text = reader["phone"].ToString();
                        emailText.Text = reader["email"].ToString();
                        genderText.Text = reader["gender"].ToString();
                        fromText.Text = reader["source"].ToString();
                        toText.Text = reader["destination"].ToString();
                        dateText.Text = reader["date"].ToString();
                        timeText.Text = reader["time"].ToString();
                        seatText.Text = reader["seatNo"].ToString();


                    }
                    catch (Exception ex)
                    {

                    }
                }

            }
            else
            {
                panel.Visible = false;
            }
        }

        protected void DisplayButtonClicked(object sender, EventArgs e)
        {
            string pnr = pnrText.Text;

            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Travels"].ConnectionString))
            {

                SqlCommand cmd = new SqlCommand("select * from Buses,Bookings,Customers where Buses.busID=Bookings.busID and Bookings.username=Customers.username and Bookings.pnrID=@pnr", con);
                cmd.Parameters.AddWithValue("@pnr", pnr);

                try
                {
                    con.Open();

                    SqlDataReader reader = cmd.ExecuteReader();

                    reader.Read();

                    ticketpnrText.Text = reader["pnrID"].ToString();
                    nameText.Text = reader["name"].ToString();
                    phoneText.Text = reader["phone"].ToString();
                    emailText.Text = reader["email"].ToString();
                    genderText.Text = reader["gender"].ToString();
                    fromText.Text = reader["source"].ToString();
                    toText.Text = reader["destination"].ToString();
                    dateText.Text = reader["date"].ToString();
                    timeText.Text = reader["time"].ToString();
                    seatText.Text = reader["seatNo"].ToString();


                }
                catch (Exception ex)
                {
                phoneLabel.Text = "Error";
                }
            }

            panel.Visible = true;
        }

    protected void BackButtonClicked(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerOptions.aspx");
    }
}
