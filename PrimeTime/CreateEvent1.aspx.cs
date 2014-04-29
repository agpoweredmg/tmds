using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateEvent1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void next_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateEvent2.aspx");
    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        customerId_txt.Text = " ";
        firstName_txt.Text =  " ";
        lastName_txt.Text = " ";
        phone1_txt.Text = " ";
        phone2_txt.Text = " ";
        email_txt.Text = " ";
        street_txt.Text = " ";
        apt_suite_txt.Text = " ";
        city_txt.Text = " ";
        state_txt.Text = " ";
        zip_txt.Text = " ";
        billingStreet_txt.Text = " ";
        billlingSuiteApt_txt.Text = " ";
        billingCity_txt.Text = " ";
        billingState_txt.Text = " ";
        billingZip_txt.Text = " ";

    }

    protected void back_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeMain.aspx");
    }
    protected void home_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeMain.aspx");
    }
}