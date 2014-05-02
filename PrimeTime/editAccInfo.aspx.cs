﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editAccInfo : System.Web.UI.Page
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
        accountID_tb.Text = "";
        accountBalance_tb.Text = "";
        amountDue_tb.Text = "";
        dateDue_tb.Text = "";
        actionToPerform_ddl.SelectedIndex = 0;
        accountID_tb.Visible = true;
        AccountID_lbl.Visible = false;
        AccountID_ddl.Visible = false;
        AccountID_ddl.SelectedIndex = 0;
    }

    protected void accountID_tb_TextChanged(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

    }
    protected void actionToPerform_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (actionToPerform_ddl.SelectedIndex == 2 || actionToPerform_ddl.SelectedIndex == 3)
            AccountID_ddl.Visible = true;
            
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
       
    }
    protected void AccountID_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        AccountID_lbl.Text = AccountID_ddl.SelectedItem.ToString();
        AccountID_lbl.Visible = true;
        accountID_tb.Visible = false;
    }
}