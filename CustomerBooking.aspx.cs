using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class CustomerBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Details"] != null)
        {
            string str = Session["Details"].ToString();
            if (str == "Invalid")
            {
                statusLabel.Visible = true;
                statusLabel.Text = "Sorry, no buses available with the selected details. Please enter some other combination!";
            }
        }

        if (!this.IsPostBack)
        {

            statusLabel.Visible = false;
            timeLabel.Visible = false;
            timeDDL.Visible = false;
            seatsLabel.Visible = false;
            seatsText.Visible = false;
            priceLabel.Visible = false;
            bookButton.Visible = false;
            seatValidator.Visible = false;
            
            if (Session["Details"] != null)
            {
                string str = Session["Details"].ToString();
                if (str == "Invalid")
                {
                    statusLabel.Visible = true;
                    statusLabel.Text = "Sorry, no buses available with the selected details. Please enter some other combination!";
                }
            }
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Travels"].ConnectionString))
            {
                SqlCommand sourcecmd = new SqlCommand("select distinct source from Buses", con);
                SqlCommand destcmd = new SqlCommand("select distinct destination from Buses", con);
                SqlCommand datecmd = new SqlCommand("select distinct date from Buses", con);

                try
                {
                    con.Open();

                    SqlDataReader reader;

                    reader = sourcecmd.ExecuteReader();
                    while (reader.Read())
                    {
                        sourceDDL.Items.Add(reader["source"].ToString());
                    }
                    con.Close();
                    con.Open();
                    reader = destcmd.ExecuteReader();
                    while (reader.Read())
                    {
                        destinationDDL.Items.Add(reader["destination"].ToString());
                    }

                }
                catch (Exception ex)
                {

                }
            }
        }
    }

    protected void SearchButtonClicked(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Travels"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("SELECT * from Buses where source=@source and destination=@destination and date=@date", con);
            cmd.Parameters.AddWithValue("@source", sourceDDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@destination", destinationDDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@date", calendar.SelectedDate.ToString());

            try
            {
                con.Open();

                SqlDataReader reader;

                reader = cmd.ExecuteReader();

                if (!reader.Read())
                {
                    Session["Details"] = "Invalid";
                    statusLabel.Visible = true;
                    statusLabel.Text = "Sorry, no buses available with the selected details. Please enter some other combination!";
                    //Server.Transfer(Request.FilePath);
                }
                else
                {
                    con.Close();
                    con.Open();

                    searchButton.Visible = false;
                    statusLabel.Visible = false;

                    timeDDL.Visible = true;
                    seatsText.Visible = true;
                    priceLabel.Visible = true;
                    bookButton.Visible = true;
                    timeLabel.Visible = true;
                    seatsLabel.Visible = true;
                    seatValidator.Visible = true;
                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        timeDDL.Items.Add(reader["time"].ToString());
                    }
                }
            }
            catch (Exception ex) { }
        }
    }

    protected void BookButtonClicked(object sender, EventArgs e)
    {
        Random rand = new Random();

        int pnr = rand.Next(1100000, 9999999);
        int busID = 0;
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Travels"].ConnectionString))
        {

            SqlCommand cmd = new SqlCommand("select busID from Buses where source=@source and destination=@destination and date=@date and time=@time", con);
            cmd.Parameters.AddWithValue("@source", sourceDDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@destination", destinationDDL.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@date", calendar.SelectedDate.ToString());
            cmd.Parameters.AddWithValue("@time", timeDDL.SelectedItem.Text);


            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                reader.Read();
                busID = (int)reader["busID"];

            }
            catch (Exception ex)
            {

            }
        }

        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Travels"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("insert into Bookings values(@pnrID,@username,@busID,@seatNo)", con);
            if (Session["User"] != null)
            {
                cmd.Parameters.AddWithValue("@username", Session["User"].ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@username", "INHEHE");
            }
            cmd.Parameters.AddWithValue("@pnrID", pnr);
            cmd.Parameters.AddWithValue("@busID", busID);
            cmd.Parameters.AddWithValue("@seatNo", seatsText.Text);





            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                statusLabel.Visible = true;
                statusLabel.Text = "OPGFDG";
            }
        }

        string seats = seatsText.Text;
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
            getcmd.Parameters.AddWithValue("@busID", busID);


            try
            {
                con.Open();
                SqlDataReader reader = getcmd.ExecuteReader();
                reader.Read();
                s = Int32.Parse(reader["availableSeats"].ToString());
                s = s - count;
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
            cmd1.Parameters.AddWithValue("@busID", busID);


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



        string url = "~/PrintBooking.aspx?";
        url += "PNR=" + Server.UrlEncode(pnr.ToString());
        Response.Redirect(url);
    }

    protected void calendar_SelectionChanged(object sender, EventArgs e)
    {

    }
    protected void BackButtonClicked(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerOptions.aspx");
    }
}