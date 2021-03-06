﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReportsGeneration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        eventLookup_ddl.Visible = false;
        Response.Cookies["evid"].Value = eventLookup_ddl.SelectedValue.ToString();
        if (!Convert.ToBoolean(Request.Cookies["cred"]["mgr"]))
        {
            Response.Redirect("InvalidLoginCredentials.aspx");
        }
    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void home_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("mgmtTasks.aspx");
    }
    protected void generateReport_btn_Click(object sender, EventArgs e)
    {

        if (chooseReport_ddl.SelectedIndex == 0)
        {
            Response.Redirect("AccountsPayableReports.aspx");
        }

        if (chooseReport_ddl.SelectedIndex == 1)

            Response.Redirect("AccountsReceivableReports.aspx");

        {
            if (chooseReport_ddl.SelectedIndex == 2)

                Response.Redirect("CustomerReport.aspx");
        }

        {
            if (chooseReport_ddl.SelectedIndex == 3)

                Response.Redirect("InventoryReports.aspx");
        }
        {
            if (chooseReport_ddl.SelectedIndex == 4)

                Response.Redirect("PayrollReports.aspx");
        }

        {
            if (chooseReport_ddl.SelectedIndex == 5)

                Response.Redirect("PurchaseOrdersReport.aspx");
        }
        {
            if (chooseReport_ddl.SelectedIndex == 6)

                Response.Redirect("EmployeesReport.aspx");
        }
    }


    protected void chooseReport_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (chooseReport_ddl.SelectedIndex == 4)
        {
            eventLookup_ddl.Visible = true;
        }

    }

    protected void eventLookup_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

        Response.Cookies["evid"].Value = eventLookup_ddl.SelectedValue.ToString();
    }
}
