using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TimeManagment : System.Web.UI.Page
{
    double timeInHr;
    double timeInMin;
    double timeOutHr;
    double timeOutMin;
    double hoursWorked;


    private SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");
    private SqlCommand command;

    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < 24; i++)
        {
            timeIn_ddl.Items.Add(Convert.ToString(i));
            timeOut_ddl.Items.Add(Convert.ToString(i));
        }

        for(int i = 0; i <= 45; i += 15){
            timeInMinutes_ddl.Items.Add(Convert.ToString(i));
            timeOutMinutes_ddl.Items.Add(Convert.ToString(i));
        }
    }
    protected void enterTime_btn_Click(object sender, EventArgs e)
    {
        hoursWorked = (timeOutHr + timeOutMin) - (timeInHr + timeInMin); 
        hoursWorked_lbl.Text = hoursWorked.ToString();

        command = new SqlCommand("new_pay_schedule", conn);
        command.CommandType = CommandType.StoredProcedure;
        command.Parameters.AddWithValue("@emp_id", Request.Cookies["cred"]["uname"].ToString());
        command.Parameters.AddWithValue("@job_id", jobPerformed_ddl.SelectedValue);
        command.Parameters.AddWithValue("@hours_worked", hoursWorked);

        conn.Open();
        command.ExecuteNonQuery();
        conn.Close();
    }
    protected void timeIn_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        timeInHr = Convert.ToDouble(timeIn_ddl.SelectedValue.ToString());
    }
    protected void timeInMinutes_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(timeInMinutes_ddl.SelectedValue.ToString()) == 0)
        {
            timeInMin = 0;
        }
        else if (Convert.ToInt32(timeInMinutes_ddl.SelectedValue.ToString()) == 15)
        {
            timeInMin = .25;
        }
        else if (Convert.ToInt32(timeInMinutes_ddl.SelectedValue.ToString()) == 30)
        {
            timeInMin = .5;
        }
        else
        {
            timeInMin = .75;
        }

    }
    protected void timeOut_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        timeOutHr = Convert.ToDouble(timeOut_ddl.SelectedValue.ToString());
    }
    protected void timeOutMinutes_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(timeOutMinutes_ddl.SelectedValue.ToString()) == 0)
        {
            timeOutMin = 0;
        }
        else if (Convert.ToInt32(timeOutMinutes_ddl.SelectedValue.ToString()) == 15)
        {
            timeOutMin = .25;
        }
        else if (Convert.ToInt32(timeOutMinutes_ddl.SelectedValue.ToString()) == 30)
        {
            timeOutMin = .5;
        }
        else
        {
            timeOutMin = .75;
        }
    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
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
}