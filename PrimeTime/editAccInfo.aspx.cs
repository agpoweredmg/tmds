using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editAccInfo : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        accountID_tb.Text = "";
        accountBalance_tb.Text = "";
        amountDue_tb.Text = "";
        dateDue_tb.Text = "";
        actionToPerform_ddl.SelectedIndex = 0;
    }

    protected void accountID_tb_TextChanged(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

    }
    protected void actionToPerform_ddl_SelectedIndexChanged(object sender, EventArgs e)
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

    protected void dateDue_tb_TextChanged(object sender, EventArgs e)
    {
        dateDue_RV.MinimumValue = System.DateTime.Now.ToString("MM/dd/yyyy");
        dateDue_RV.MaximumValue = System.DateTime.Now.AddYears(25).ToString("MM/dd/yyyy");
    }
}