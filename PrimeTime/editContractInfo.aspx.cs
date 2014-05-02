using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Convert.ToBoolean(Request.Cookies["cred"]["mgr"]))
        {
            Response.Redirect("InvalidLoginCredentials.aspx");
        }
    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        contractID_tb.Text = "";
        accountID_tb.Text = "";
        contractDate_tb.Text = "";
        depositAmount_tb.Text = "";
        discount_tb.Text = "";
        actionToPerform_ddl.SelectedIndex = 0;
        chooseContract_ddl.Visible = false;
        AccountID_lbl.Visible = false;
        ContractID_lbl.Visible = false;
        accountID_tb.Visible = true;
        contractID_tb.Visible = true;
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

    }
    protected void actionToPerform_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (actionToPerform_ddl.SelectedIndex == 2 || actionToPerform_ddl.SelectedIndex == 3)
            chooseContract_ddl.Visible = true;
        ContractID_lbl.Text = chooseContract_ddl.SelectedItem.ToString();
        AccountID_lbl.Text = chooseContract_ddl.SelectedIndex.ToString();
        ContractID_lbl.Visible = true;
        contractID_tb.Visible = false;
        AccountID_lbl.Visible = true;
        accountID_tb.Visible = false;
            
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
    protected void chooseContract_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        ContractID_lbl.Text = chooseContract_ddl.SelectedItem.ToString();
        AccountID_lbl.Text = chooseContract_ddl.SelectedIndex.ToString();
    }
}