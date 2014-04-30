using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class SuppliersInformation : System.Web.UI.Page
{
    private SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");
    private SqlCommand command;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        if (chooseAction_ddl.SelectedIndex == 1)
        {
            command = new SqlCommand("new_suppliers", conn);

            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@supplier_id", id_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_name", name_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_phone", phone_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_fax", fax_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_email", email_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_street", street_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_suite_box_no", suite_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_city", city_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_state", state_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_zip", zip_tb.Text.ToString());

            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();

        }


        if (supplierLookup_ddl.SelectedIndex == 2)
        {
            command = new SqlCommand("delete_supplier", conn);

            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@supplier_id", supplierLookup_ddl.SelectedValue);

            conn.Open();
            command.ExecuteNonQuery();
            conn.Close();
        }
    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        id_tb.Text = "";
        name_tb.Text = "";
        phone_tb.Text = "";
        email_tb.Text = "";
        fax_tb.Text = "";
        street_tb.Text = "";
        suite_tb.Text = "";
        city_tb.Text = "";
        state_tb.Text = "";
        zip_tb.Text = "";
        chooseAction_ddl.SelectedIndex = 0;
        supplierLookup_ddl.SelectedIndex = 0;
    }
    protected void chooseAction_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (chooseAction_ddl.SelectedIndex == 2 || chooseAction_ddl.SelectedIndex == 3)
        {
            supplierLookup_ddl.Visible = true;
        }

        if (chooseAction_ddl.SelectedIndex == 0 || chooseAction_ddl.SelectedIndex == 1)
        {
            supplierLookup_ddl.Visible = false;
        }
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
    protected void supplierLookup_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        id_tb.Text = supplierLookup_ddl.SelectedValue;

    }
    protected void supplierLookup_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}