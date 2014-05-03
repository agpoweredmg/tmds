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
        if (sameAsMailling_chk.Checked == false && returningCust_chk.Checked == false)
        {
            SqlCommand billingComm = new SqlCommand("customer_billing", conn);
            billingComm.CommandType = CommandType.StoredProcedure;

            createUser();

            SqlCommand getLastId = new SqlCommand("getLastCust_Id", conn);
            getLastId.CommandType = CommandType.StoredProcedure;

            String custId;
            conn.Open();
            custId = getLastId.ExecuteScalar().ToString();

            billingComm.Parameters.AddWithValue("@customer_id", custId);
            billingComm.Parameters.AddWithValue("@street", billingStreet_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@apt_suite", billlingSuiteApt_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@city", billingCity_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@state", billingState_txt.Text.ToString());
            billingComm.Parameters.AddWithValue("@zip", billingZip_txt.Text.ToString());

            billingComm.ExecuteNonQuery();
            conn.Close();
        }

        Response.Redirect("CreateEvent2.aspx");

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        
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


    protected void sameAsMailling_chk_CheckedChanged(object sender, EventArgs e)
    {
        if (sameAsMailling_chk.Checked == true && returningCust_chk.Checked == false)
        {
            createUser();

            SqlCommand getLastId = new SqlCommand("getLastCust_Id", conn);
            getLastId.CommandType = CommandType.StoredProcedure;

            String custId;
            conn.Open();
            custId = getLastId.ExecuteScalar().ToString();

            billingStreet_txt.Text = street_txt.Text;
            billlingSuiteApt_txt.Text = apt_suite_txt.Text;
            billingCity_txt.Text = city_txt.Text;
            billingState_txt.Text = state_txt.Text;
            billingZip_txt.Text = zip_txt.Text;

            SqlCommand bilingComm = new SqlCommand("customer_billing", conn);
            bilingComm.CommandType = CommandType.StoredProcedure;

            bilingComm.Parameters.AddWithValue("@customer_id", custId);
            bilingComm.Parameters.AddWithValue("@street", street_txt.Text.ToString());
            bilingComm.Parameters.AddWithValue("@apt_suite", apt_suite_txt.Text.ToString());
            bilingComm.Parameters.AddWithValue("@city", city_txt.Text.ToString());
            bilingComm.Parameters.AddWithValue("@state", state_txt.Text.ToString());
            bilingComm.Parameters.AddWithValue("@zip", zip_txt.Text.ToString());

            
            bilingComm.ExecuteNonQuery();
            conn.Close();
        }
        else
        {
           

        }
    }

    protected void createUser()
    {
        SqlCommand command = new SqlCommand("new_customer", conn);
        command.CommandType = CommandType.StoredProcedure;

        command.Parameters.AddWithValue("@first_name", firstName_txt.Text.ToString());
        command.Parameters.AddWithValue("@last_name", lastName_txt.Text.ToString());
        command.Parameters.AddWithValue("@phone1", phone1_txt.Text.ToString());
        command.Parameters.AddWithValue("@phone2", phone2_txt.Text.ToString());
        command.Parameters.AddWithValue("@email", email_txt.Text.ToString());
        conn.Open();
        command.ExecuteNonQuery();


        SqlCommand getLastId = new SqlCommand("getLastCust_Id", conn);
        getLastId.CommandType = CommandType.StoredProcedure;

        String custId;

        custId = getLastId.ExecuteScalar().ToString();


        SqlCommand maillingComm = new SqlCommand("customer_mailing", conn);
        maillingComm.CommandType = CommandType.StoredProcedure;

        maillingComm.Parameters.AddWithValue("@customer_id", custId);
        maillingComm.Parameters.AddWithValue("@street", street_txt.Text.ToString());
        maillingComm.Parameters.AddWithValue("@apt_suite", apt_suite_txt.Text.ToString());
        maillingComm.Parameters.AddWithValue("@city", city_txt.Text.ToString());
        maillingComm.Parameters.AddWithValue("@state", state_txt.Text.ToString());
        maillingComm.Parameters.AddWithValue("@zip", zip_txt.Text.ToString());
        maillingComm.Parameters.AddWithValue("@same_as_billing", 1);

        maillingComm.ExecuteNonQuery();

        conn.Close();
    }

    protected void firstName_txt_TextChanged(object sender, EventArgs e)
    {

    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {

    }
    protected void custId_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (returningCust_chk.Checked == true)
        {
             String customerID = custId_ddl.SelectedValue.ToString();
             //firstName_txt.Text = customerID;

                string oString = "Select * from customers where customer_id = @id";
                SqlCommand oCmd = new SqlCommand(oString, conn);
                oCmd.Parameters.AddWithValue("@id", customerID);           
                conn.Open();
                using (SqlDataReader oReader = oCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {
                        firstName_txt.Text = oReader["cust_f_name"].ToString();
                        lastName_txt.Text = oReader["cust_l_name"].ToString();
                        phone1_txt.Text = oReader["cust_phone"].ToString();
                        phone2_txt.Text = oReader["cust_alt_phone"].ToString();
                        email_txt.Text = oReader["cust_email"].ToString();
                    }

                    conn.Close();
                }
                string mailingString = "Select * from mailing_address where customer_id = @id";
                SqlCommand mCmd = new SqlCommand(mailingString, conn);
                mCmd.Parameters.AddWithValue("@id", customerID);
                conn.Open();
                using (SqlDataReader mReader = mCmd.ExecuteReader())
                {
                    while (mReader.Read())
                    {
                        street_txt.Text = mReader["street"].ToString();
                        apt_suite_txt.Text = mReader["apt_suite_box_no"].ToString();
                        city_txt.Text = mReader["city"].ToString();
                        state_txt.Text = mReader["state"].ToString();
                        zip_txt.Text = mReader["zip"].ToString();
                    }

                    conn.Close();
                }
                string bString = "Select * from billing_address where customer_id = @id";
                SqlCommand bCmd = new SqlCommand(bString, conn);
                bCmd.Parameters.AddWithValue("@id", customerID);
                conn.Open();
                using (SqlDataReader bReader = bCmd.ExecuteReader())
                {
                    while (bReader.Read())
                    {
                        billingStreet_txt.Text = bReader["street"].ToString();
                        billlingSuiteApt_txt.Text = bReader["apt_suite_box_no"].ToString();
                        billingCity_txt.Text = bReader["city"].ToString();
                        billingState_txt.Text = bReader["state"].ToString();
                        billingZip_txt.Text = bReader["zip"].ToString();
                    }

                    conn.Close();
                }
        }
             
        
    }
}