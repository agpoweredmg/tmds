using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CreateEvent1 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void next_btn_Click(object sender, EventArgs e)
    {

        SqlCommand command = new SqlCommand("new_customer", conn);
        command.CommandType = CommandType.StoredProcedure;

        SqlCommand maillingComm = new SqlCommand("customer_mailing", conn);
        maillingComm.CommandType = CommandType.StoredProcedure;

        SqlCommand billingComm = new SqlCommand("billing_Address", conn);
        billingComm.CommandType = CommandType.StoredProcedure;

       // command.Parameters.AddWithValue("@customer_id", customerId_txt.Text.ToString());
        command.Parameters.AddWithValue("@first_name", firstName_txt.Text.ToString());
        command.Parameters.AddWithValue("@last_name", lastName_txt.Text.ToString());
        command.Parameters.AddWithValue("@phone1", phone1_txt.Text.ToString());
        command.Parameters.AddWithValue("@phone2", phone2_txt.Text.ToString());
        command.Parameters.AddWithValue("@email", email_txt.Text.ToString());

        //maillingComm.Parameters.AddWithValue("@customer_id", customerId_txt.Text.ToString());
        maillingComm.Parameters.AddWithValue("@street", street_txt.Text.ToString());
        maillingComm.Parameters.AddWithValue("@apt_suite", apt_suite_txt.Text.ToString());
        maillingComm.Parameters.AddWithValue("@city", city_txt.Text.ToString());
        maillingComm.Parameters.AddWithValue("@state", state_txt.Text.ToString());
        maillingComm.Parameters.AddWithValue("@zip", zip_txt.Text.ToString());

        if (sameAsMailling_chk.Checked == true)
        {
            maillingComm.Parameters.AddWithValue("@same_as_billing", 1);

            billingComm.Parameters.AddWithValue("@street", street_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@apt_suite", apt_suite_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@city", city_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@state", state_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@zip", zip_txt.Text.ToString());

        }
        else
        {
            maillingComm.Parameters.AddWithValue("@same_as_billing", 0);
        }

        conn.Open();

        command.ExecuteNonQuery();
        maillingComm.ExecuteNonQuery();
        billingComm.ExecuteNonQuery();

        conn.Close();

        Response.Redirect("CreateEvent2.aspx");

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        //customerId_txt.Text = " ";
        firstName_txt.Text = " ";
        lastName_txt.Text = " ";
        phone1_txt.Text = " ";
        phone2_txt.Text = " ";
        email_txt.Text = " ";
        street_txt.Text = " ";
        apt_suite_txt.Text = " ";
        city_txt.Text = " ";
        state_txt.Text = " ";
        zip_txt.Text = " ";
        billingStreet_txt.Text = " ";
        billlingSuiteApt_txt.Text = " ";
        billingCity_txt.Text = " ";
        billingState_txt.Text = " ";
        billingZip_txt.Text = " ";

    }

    protected void home_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeMain.aspx");
    }
    protected void returned_Or_newCustomer_rd_group_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (returned_Or_newCustomer_rd_group.SelectedItem.Equals(1))
        {

        }
        else
        {
        }
    }

    protected void sameAsMailling_chk_CheckedChanged(object sender, EventArgs e)
    {
        if (sameAsMailling_chk.Checked == true)
        {
            SqlCommand maillingComm = new SqlCommand("customer_billing", conn);
            maillingComm.CommandType = CommandType.StoredProcedure;

            //maillingComm.Parameters.AddWithValue("@customer_id", customerId_txt.Text.ToString());
            maillingComm.Parameters.AddWithValue("@street", street_txt.Text.ToString());
            maillingComm.Parameters.AddWithValue("@apt_suite", apt_suite_txt.Text.ToString());
            maillingComm.Parameters.AddWithValue("@city", city_txt.Text.ToString());
            maillingComm.Parameters.AddWithValue("@state", state_txt.Text.ToString());
            maillingComm.Parameters.AddWithValue("@zip", zip_txt.Text.ToString());

            conn.Open();
            maillingComm.ExecuteNonQuery();

            conn.Close();
        }
        else
        {
            SqlCommand billingComm = new SqlCommand("customer_billing", conn);
            billingComm.CommandType = CommandType.StoredProcedure;

            //billingComm.Parameters.AddWithValue("@customer_id", customerId_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@street", billingStreet_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@apt_suite", billlingSuiteApt_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@city", billingCity_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@state", billingState_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@zip", billingZip_txt.Text.ToString());

            conn.Open();
            billingComm.ExecuteNonQuery();
            conn.Close();

        }
    }

    protected void firstName_txt_TextChanged(object sender, EventArgs e)
    {

    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {

    }
}