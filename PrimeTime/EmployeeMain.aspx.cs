using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void timeManagment_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("TimeManagement.aspx");
    }
    protected void infromationLookup_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("InformationLookup.aspx");
    }
    protected void createEvent_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateEvent1.aspx");
    }
}