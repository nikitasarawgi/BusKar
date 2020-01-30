using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class NewCustomer : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("INSERT INTO Customers(username,password,name,email,phone,gender) values(@username,@password,@name,@email,@phone,@gender)", conn);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@name", TextBox3.Text);
            cmd.Parameters.AddWithValue("@email", TextBox4.Text);
            cmd.Parameters.AddWithValue("@phone", TextBox5.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Text);
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
        }
        finally
        {
            conn.Close();
        }
        Response.Redirect("~/CustomerLogin.aspx");
    }

}