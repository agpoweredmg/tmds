﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class ServicesInformation : System.Web.UI.Page
{
    private SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");
    private SqlCommand command;

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
        string ID = SelectServiceID_ddl.SelectedValue.ToString();
        string oString = "Select * from Special_Services where Service_ID = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", ID);
        SqlDataReader oReader;
        try
        {

            conn.Open();
            oReader = oCmd.ExecuteReader();

            while (oReader.Read())
            {

                ServiceID_tb.Text = oReader["Service_ID"].ToString();
                ServiceName_tb.Text = oReader["Service_Name"].ToString();
                ServicePrice_tb.Text = oReader["Service_Price"].ToString();


            }

        }
        catch (Exception ex)
        {


            ServiceName_lbl.Text = SelectServiceID_ddl.SelectedItem.ToString();
            ServiceID_lbl.Text = SelectServiceID_ddl.SelectedValue.ToString();
            ServiceID_lbl.Visible = true;
            ServiceName_lbl.Visible = true;
            ServiceID_tb.Visible = false;
            ServiceName_tb.Visible = false;
        }
    }


    protected void Submit_btn_Click(object sender, EventArgs e)
    {

        if (ChooseSpecialServices_ddl.SelectedIndex == 1)
        {
            SqlCommand command = new SqlCommand("new_special_service", conn);

            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@Srvice_Name", ServiceName_tb.Text.ToString());
            command.Parameters.AddWithValue("@Service_Price", ServicePrice_tb.Text.ToString());

            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
        }

        if (ChooseSpecialServices_ddl.SelectedIndex == 2)
        {
            SqlCommand command = new SqlCommand("delete_special_services", conn);

            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Service_ID", SelectServiceID_ddl.SelectedValue.ToString());






            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
        }
    }
    }


