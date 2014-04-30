using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        id_tb.Text = "";
        name_tb.Text = "";
        lastName_tb.Text = "";
        ssn_tb.Text = "";
        hireDate_tb.Text = "";
        endDate_tb.Text = "";
        phone_tb.Text = "";
        altPhone_tb.Text = "";
        password_tb.Text = "";
        manager_chkbx.Checked = false;
        chooseAction_ddl.SelectedIndex = 0;
    }
    protected void chooseAction_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
   
    }
    protected void manager_chkbx_CheckedChanged(object sender, EventArgs e)
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
    protected void id_tb_TextChanged(object sender, EventArgs e)
    {

    }
}