using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SuppliersInformation : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        if (chooseAction_ddl.SelectedIndex == 1)
        {
            SqlCommand command = new SqlCommand("new_suppliers", conn);

            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@supplier_id", id_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_name", name_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_phone", phone_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_fax", fax_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_email", email_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_street", street_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_suite_box_no", "3");
            command.Parameters.AddWithValue("@supplier_city", city_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_state", state_tb.Text.ToString());
            command.Parameters.AddWithValue("@supplier_zip", zip_tb.Text.ToString());

            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();

        }
    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {

    }
    protected void chooseAction_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void back_btn_Click(object sender, EventArgs e)
    {

    }
    protected void home_btn_Click(object sender, EventArgs e)
    {

    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {

    }
}