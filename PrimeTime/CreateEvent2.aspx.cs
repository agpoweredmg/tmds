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
    protected void back_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateEvent1.aspx");
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        
        SqlCommand command = new SqlCommand("new_event", conn);
        command.CommandType = CommandType.StoredProcedure;
        command.Parameters.AddWithValue("@event_name", eventName_txt.Text.ToString());
        command.Parameters.AddWithValue("@event_location",eventLocation_txt.ToString());
        command.Parameters.AddWithValue("@event_date", eventDate.Text.ToString());



        conn.Open();
        command.ExecuteNonQuery();
        conn.Close();

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
}