using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class CancelBooking : System.Web.UI.Page
{

    int s, busid;
    protected void Page_Load(object sender, EventArgs e)
    {
        deleteButton.Visible = false;
        panel.Visible = false;
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

                busid = Int32.Parse(reader["busID"].ToString());


            }
            catch (Exception ex)
            {

            }
        }

        panel.Visible = true;
        deleteButton.Visible = true;
    }

    protected void DeleteButtonClicked(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Travels"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("delete from Bookings where pnrID=@pnr", con);
            cmd.Parameters.AddWithValue("@pnr", pnrText.Text);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {

            }
        }
        panel.Visible = false;
        deleteButton.Visible = false;
        deleteLabel.Visible = true;
        deleteLabel.Text = "The booking was successfully deleted!";


        string seats = seatText.Text;
        int count = 1;
        foreach (char c in seats)
        {
            if (c == ',')
            {
                count++;
            }
        }
        int s = 0;

        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Travels"].ConnectionString))
        {
            SqlCommand getcmd = new SqlCommand("select availableSeats from Buses where busID=@busID", con);
            getcmd.Parameters.AddWithValue("@busID", busid);


            try
            {
                con.Open();
                SqlDataReader reader = getcmd.ExecuteReader();
                reader.Read();
                s = Int32.Parse(reader["availableSeats"].ToString());
                s = s + count;
                con.Close();


            }
            catch (Exception ex)
            {

            }
        }

        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Travels"].ConnectionString))
        {
            SqlCommand cmd1 = new SqlCommand("update Buses set availableSeats=@s where busID=@busID", con);
            cmd1.Parameters.AddWithValue("@s", s);
            cmd1.Parameters.AddWithValue("@busID", busid);


            try
            {



                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception ex)
            {

            }
        }

    }
    protected void BackButtonClicked(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerOptions.aspx");
    }
}
