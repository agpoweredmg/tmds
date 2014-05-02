using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ServicesInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void home_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("mgmtTasks.aspx");
    }
    protected void Clear_btn_Click(object sender, EventArgs e)
    {
        ServiceID_tb.Text = "";
        ServiceName_tb.Text = "";
        ServicePrice_tb.Text = "";
        ChooseSpecialServices_ddl.SelectedIndex = 0;
        SelectServiceID_ddl.Visible = false;
        ServiceID_lbl.Visible = false;
        ServiceName_lbl.Visible = false;
        ServiceName_tb.Visible = true;
        ServiceID_tb.Visible = true;
    }
    protected void ChooseSpecialServices_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ChooseSpecialServices_ddl.SelectedIndex == 2 || ChooseSpecialServices_ddl.SelectedIndex == 3)
            SelectServiceID_ddl.Visible = true;
        else
        {
            SelectServiceID_ddl.Visible = false;
            ServiceID_lbl.Visible = false;
            ServiceName_lbl.Visible = false;
            ServiceName_tb.Visible = true;
            ServiceID_tb.Visible = true;
        }
    }
    protected void SelectServiceID_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        ServiceName_lbl.Text = SelectServiceID_ddl.SelectedItem.ToString();
        ServiceID_lbl.Text = SelectServiceID_ddl.SelectedValue.ToString();
        ServiceID_lbl.Visible = true;
        ServiceName_lbl.Visible = true;
        ServiceID_tb.Visible = false;
        ServiceName_tb.Visible = false;
    }
}