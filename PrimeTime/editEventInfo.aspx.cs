using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editEventInfo : System.Web.UI.Page
{
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
        eventID_tb.Visible = false;
        EventID_lbl.Text = EventID_ddl.SelectedValue.ToString();
        EventID_lbl.Visible = true;
        EventName_lbl.Text = EventID_ddl.SelectedItem.ToString();
        EventName_lbl.Visible = true;
        eventName_tb.Visible = false;
    }
}