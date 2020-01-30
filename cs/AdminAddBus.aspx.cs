using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminAddBus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string con = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Travels;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = con;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Buses(busID,source,destination,date,time,totalSeats,availableSeats) values(@busID,@source,@destination,@date,@time,@totalSeats,@availableSeats)", conn);
            cmd.Parameters.AddWithValue("@busID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@source", TextBox3.Text);
            cmd.Parameters.AddWithValue("@destination", TextBox4.Text);
            cmd.Parameters.AddWithValue("@date", TextBox5.Text);
            cmd.Parameters.AddWithValue("@time", TextBox6.Text);
            cmd.Parameters.AddWithValue("@totalSeats", TextBox7.Text);
            cmd.Parameters.AddWithValue("@availableSeats", TextBox8.Text);
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {

        }
        finally
        {
            conn.Close();
        }
        Response.Redirect("AdminHome.aspx");
    }

    protected void BackButtonClicked(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminHome.aspx");
    }
}