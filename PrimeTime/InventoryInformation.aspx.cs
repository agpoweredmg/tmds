﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class InventoryInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chooseAction_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        id_tb.Text = "";
        name_tb.Text = "";
        category_tb.Text = "";
        cost_tb.Text = "";
        expirationDate_tb.Text = "";
        quantityOnHand_tb.Text = "";
        minimum_tb.Text = "";
        maximum_tb.Text = "";
        chooseAction_ddl.SelectedIndex = 0;
    }
    protected void back_btn_Click(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
         if (chooseAction_ddl.SelectedIndex == 1)
        {
            SqlCommand command = new SqlCommand("new_special_service", conn);

            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@srvice_name", ServiceName_tb.Text.ToString());
            command.Parameters.AddWithValue("@service_price", ServicePrice_tb.Text.ToString());


            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
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