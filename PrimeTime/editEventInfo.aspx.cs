using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;


public partial class editEventInfo : System.Web.UI.Page
{
    private SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");
    private SqlCommand command;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        eventID_tb.Text = "";
        eventName_tb.Text = "";
        eventLocation_tb.Text = "";
        eventDate_tb.Text = "";
        actionToPerform_ddl.SelectedIndex = 0;
        EventID_lbl.Visible = false;
        EventName_lbl.Visible = false;
        eventName_tb.Visible = true;
        eventID_tb.Visible = true;
    }
    protected void back_btn_Click(object sender, EventArgs e)
    {

    }
    protected void home_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("mgmtTasks.aspx");
    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        if (actionToPerform_ddl.SelectedIndex == 1)
        {
            SqlCommand command = new SqlCommand("new_event", conn);

            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@event_name", eventName_tb.Text.ToString());
            command.Parameters.AddWithValue("@event_location", eventLocation_tb.Text.ToString());
            command.Parameters.AddWithValue("@event_date", eventDate_tb.Text.ToString());



            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
        }
        if (actionToPerform_ddl.SelectedIndex == 2)
        {
            SqlCommand command = new SqlCommand("delete_events", conn);

            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Event_Id", EventID_lbl.Text.ToString());
            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
        }

    }
    protected void actionToPerform_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (actionToPerform_ddl.SelectedIndex == 2 || actionToPerform_ddl.SelectedIndex == 3)
        {
            EventID_ddl.Visible = true;
            EventName_lbl.Text = EventID_ddl.SelectedItem.ToString();
            EventID_lbl.Text = EventID_ddl.SelectedValue.ToString();
            eventID_tb.Visible = false;
            eventName_tb.Visible = false;
            EventID_lbl.Visible = true;
            EventName_lbl.Visible = true;

        }
        else
            if (actionToPerform_ddl.SelectedIndex == 0 || actionToPerform_ddl.SelectedIndex == 1)
            {
                EventID_ddl.Visible = false;
                EventID_lbl.Visible = false;
                EventName_lbl.Visible = false;
                eventID_tb.Visible = true;
                eventName_tb.Visible = true;
            }

    }
    protected void EventName_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

        string ID = EventID_ddl.SelectedValue.ToString();
        string oString = "Select * from Events where Event_ID = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", ID);
        SqlDataReader oReader;
        try
        {

            conn.Open();
            oReader = oCmd.ExecuteReader();

            while (oReader.Read())
            {

                eventLocation_tb.Text = oReader["Event_Location"].ToString();
                eventDate_tb.Text = oReader["Event_Date"].ToString();
                EventID_lbl.Text = oReader["Event_ID"].ToString();



            }

        }
        catch (Exception ex)
        {


            eventID_tb.Visible = false;
            EventID_lbl.Text = EventID_ddl.SelectedValue.ToString();
            EventID_lbl.Visible = true;
            EventName_lbl.Text = EventID_ddl.SelectedItem.ToString();
            EventName_lbl.Visible = true;
            eventName_tb.Visible = false;
        }
    }
}