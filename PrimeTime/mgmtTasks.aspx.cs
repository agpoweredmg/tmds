﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mgmtTasks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Convert.ToBoolean(Request.Cookies["cred"]["mgr"]))
        {
            Response.Redirect("InvalidLoginCredentials.aspx");
        }
    }
    protected void editEvent_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("editEventInfo.aspx");
    }
    protected void editContract_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("editContractInfo.aspx");
    }
    protected void editSupplier_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("editSupInfo.aspx");
    }
    protected void editAccount_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("editAccInfo.aspx");
    }



    protected void editMealDetails_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("MealInformation.aspx");
    }

    protected void editInventoryDetails_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("InventoryInformation.aspx");
    }
    protected void editEmployeeDetails_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeInformation.aspx");
    }

    protected void specialServices_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("SpecialServicesInformation.aspx");
    }
   
    protected void  logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void editCustomer_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditCustomerInfo.aspx");
    }
    protected void editLostorDamagedItems_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditLostOrDamagedItems.aspx");
    }
    protected void generateReports_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportsGeneration.aspx");
    }
    protected void employee_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeMain.aspx");
    }
}