using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CreateEvent2 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        eventName_txt.Text = " ";
        eventDate.Text = " ";
        eventLocation_txt.Text = " ";
        services_listBox.ClearSelection();
        entreeCost_txt.Text = " ";
        entreeQtn_txt.Text = " ";
        mealDetails_ddl.ClearSelection();
        side1_ddl.ClearSelection();
        side2_ddl.ClearSelection();
        

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

        createEvent();

        Response.Redirect("EmployeeMain.aspx");

    }
    protected void home_btn_Click(object sender, EventArgs e)
    {
        if (Convert.ToBoolean(Request.Cookies["cred"]["mgr"]))
        {
            Response.Redirect("mgmtTasks.aspx");
        }
        else
        {
            Response.Redirect("employeeMain.aspx");
        }
    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void mealDetails_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    public void createEvent()
    {
        conn.Open();

        SqlCommand command = new SqlCommand("new_event", conn);
        command.CommandType = CommandType.StoredProcedure;

        command.Parameters.AddWithValue("@event_name", eventName_txt.Text.ToString());
        command.Parameters.AddWithValue("@event_location", eventLocation_txt.Text.ToString());
        command.Parameters.AddWithValue("@event_date", eventDate.Text.ToString());

        String entreeId = mealDetails_ddl.SelectedValue.ToString();
        String sideOneId = side1_ddl.SelectedValue.ToString();
        String sideTwoId = side2_ddl.SelectedValue.ToString();


        SqlCommand MDcommand = new SqlCommand("new_meal_detail2", conn);
        MDcommand.CommandType = CommandType.StoredProcedure;

        MDcommand.Parameters.AddWithValue("@entree_id", entreeId);
        MDcommand.Parameters.AddWithValue("@side_one", sideOneId);
        MDcommand.Parameters.AddWithValue("@side_two", sideTwoId);

        SqlCommand priceCommand = new SqlCommand("get_price", conn);
        priceCommand.CommandType = CommandType.StoredProcedure;

        String priceString = priceCommand.Parameters.AddWithValue("@id", entreeId).ToString();

        double entreePrice = Double.Parse(priceString);

        priceCommand.ExecuteNonQuery();
        command.ExecuteNonQuery();
        MDcommand.ExecuteNonQuery();
        conn.Close();

        String service = "";

        SqlCommand getLastId = new SqlCommand("getLastEventID", conn);
        getLastId.CommandType = CommandType.StoredProcedure;

        SqlCommand getLastMeal = new SqlCommand("getLastMealID", conn);
        getLastMeal.CommandType = CommandType.StoredProcedure;
        conn.Open();
        String EventId = getLastId.ExecuteScalar().ToString();
        String MealId = getLastMeal.ExecuteScalar().ToString();
        int numMeals = int.Parse(entreeQtn_txt.Text);

        SqlCommand NEcommand = new SqlCommand("new_event_service", conn);
        NEcommand.CommandType = CommandType.StoredProcedure;

        service = services_listBox.SelectedValue.ToString();
        NEcommand.Parameters.AddWithValue("@event_id", EventId);
        NEcommand.Parameters.AddWithValue("@services_id", service);

        NEcommand.ExecuteNonQuery();

        SqlCommand EMDcommand = new SqlCommand("new_event_meal_details", conn);
        EMDcommand.CommandType = CommandType.StoredProcedure;

        EMDcommand.Parameters.AddWithValue("@event_id", EventId);
        EMDcommand.Parameters.AddWithValue("@meal_id", MealId);
        EMDcommand.Parameters.AddWithValue("@num_of_meals", numMeals);

        EMDcommand.ExecuteNonQuery();


        conn.Close();

        


    }
}