using System;
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
    private SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chooseAction_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (chooseAction_ddl.SelectedIndex == 2 || chooseAction_ddl.SelectedIndex == 3)
            ChooseInventoryID_ddl.Visible = true;
        else
        {
            id_tb.Visible = true;
            ID_lbl.Visible = false;
            name_tb.Visible = true;
            Name_lbl.Visible = false;
            ChooseInventoryID_ddl.Visible = false;
        }
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
        ChooseInventoryID_ddl.Visible = false;
        ChooseInventoryID_ddl.SelectedIndex = 0;
        ID_lbl.Visible = false;
        id_tb.Visible = true;
        name_tb.Visible = true;
        Name_lbl.Visible = false;
    }
    protected void back_btn_Click(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        if (chooseAction_ddl.SelectedIndex == 1)
        {
            //SqlCommand command = new SqlCommand("new_special_service", conn);

            //command.CommandType = CommandType.StoredProcedure;

            //command.Parameters.AddWithValue("@srvice_name", ServiceName_tb.Text.ToString());
            //command.Parameters.AddWithValue("@service_price", ServicePrice_tb.Text.ToString());


            //conn.Open();

            //command.ExecuteNonQuery();

            //conn.Close();
        }
    }
    protected void home_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("mgmtTasks.aspx");
    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void ChooseInventoryID_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

       string ID = ChooseInventoryID_ddl.SelectedValue.ToString();
        string oString = "Select * from Inventory where Inventory_ID = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", ID);
        SqlDataReader oReader;
        try
        {

            conn.Open();
            oReader = oCmd.ExecuteReader();

            while (oReader.Read())
            {

                id_tb.Text = oReader["Inventory_ID"].ToString();
                name_tb.Text = oReader["Item_Name"].ToString();
               category_tb.Text = oReader["Emp_SSN"].ToString();
                cost_tb.Text = oReader["Emp_Hire_Date"].ToString();
                expirationDate_tb.Text = oReader["Expiry_Date"].ToString();
                quantityOnHand_tb.Text = oReader["QOH"].ToString();
                minimum_tb.Text = oReader["Min_Amt"].ToString();
                maximum_tb.Text = oReader["Max_Amt"].ToString();


            }

        }
        catch (Exception ex)
        {


            ID_lbl.Text = ChooseInventoryID_ddl.SelectedItem.ToString();
            Name_lbl.Text = ChooseInventoryID_ddl.SelectedValue.ToString();
            ID_lbl.Visible = true;
            id_tb.Visible = false;
            name_tb.Visible = false;
            Name_lbl.Visible = true;
        }
    }
}