using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SalesRepresentativeInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        salesRepID_tb.Text = "";
        firstName_tb.Text = "";
        lastName_tb.Text = "";
        phone_tb.Text = "";
        altPhone_tb.Text = "";
        email_tb.Text = "";
        chooseAction_ddl.SelectedIndex = 0;
    }
    protected void chooseAction_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

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
}