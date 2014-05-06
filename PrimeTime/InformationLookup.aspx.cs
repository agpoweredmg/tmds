using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class InformationLookup : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void home_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("employeemain.aspx");
    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void customers_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
                String customerID = customers_ddl.SelectedValue.ToString();
                

                string oString = "Select * from customers where customer_id = @id";
                SqlCommand oCmd = new SqlCommand(oString, conn);
                oCmd.Parameters.AddWithValue("@id", customerID);           
                conn.Open();
                using (SqlDataReader oReader = oCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {
                        outInformationTextBox_txt.Text = "First Name: " + oReader["cust_f_name"].ToString() + "\n" +
                                                         "Lase Name: " + oReader["cust_l_name"].ToString() + "\n" +
                                                         "Phone Number: " + oReader["cust_phone"].ToString() + "\n" +
                                                         "Alternate phone: " + oReader["cust_alt_phone"].ToString() + "\n" +
                                                         "Email: " + oReader["cust_email"].ToString() + "\n";
                    }

                    conn.Close();
                }

                string mlString = "Select * from mailing_address where customer_id = @id";
                SqlCommand mlCmd = new SqlCommand(mlString, conn);
                mlCmd.Parameters.AddWithValue("@id", customerID);
                conn.Open();
                using (SqlDataReader mlReader = mlCmd.ExecuteReader())
                {
                    while (mlReader.Read())
                    {
                        outInformationTextBox_txt.Text += "\n" + "Mailing Address: " + "\n" +
                                                         "Street: " + mlReader["street"].ToString() + "\n" +
                                                         "Apt/suite: " + mlReader["Apt_suite_box_no"].ToString() + "\n" +
                                                         "City: " + mlReader["city"].ToString() + "\n" +
                                                         "State: " + mlReader["state"].ToString() + "\n";
                                                         
                    }

                    conn.Close();
                }
                string blString = "Select * from billing_address where customer_id = @id";
                SqlCommand blCmd = new SqlCommand(blString, conn);
                blCmd.Parameters.AddWithValue("@id", customerID);
                conn.Open();
                using (SqlDataReader blReader = blCmd.ExecuteReader())
                {
                    while (blReader.Read())
                    {
                        outInformationTextBox_txt.Text += "\n" + "Mailing Address: " + "\n" +
                                                         "Street: " + blReader["street"].ToString() + "\n" +
                                                         "Apt/suite: " + blReader["Apt_suite_box_no"].ToString() + "\n" +
                                                         "City: " + blReader["city"].ToString() + "\n" +
                                                         "State: " + blReader["state"].ToString() + "\n";

                    }

                    conn.Close();
                }
    }
    protected void suppliers_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        String supplierID = suppliers_ddl.SelectedValue.ToString();
        

        string oString = "Select * from suppliers where supplier_ID = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", supplierID);
        conn.Open();
        using (SqlDataReader oReader = oCmd.ExecuteReader())
        {
            while (oReader.Read())
            {
                outInformationTextBox_txt.Text = "Supplier Name: " + oReader["Supplier_Name"].ToString() + "\n" +
                                                 "Supplier Phone: " + oReader["Supplier_phone"].ToString() + "\n" +
                                                 "Supplier Fax: " + oReader["supplier_fax"].ToString() + "\n" +
                                                 "Supplier Email: " + oReader["supplier_email"].ToString() + "\n" +
                                                 "Supplier Street: " + oReader["Supplier_Street"].ToString() + "\n"+
                                                 "Supplier Box/suite: " + oReader["Supplier_suite_box_no"].ToString() + "\n" +
                                                 "Supplier City:" + oReader["supplier_city"].ToString() + "\n" +
                                                 "Supplier State: " + oReader["supplier_state"].ToString() + "\n" +
                                                 "Supplier Zip: " + oReader["Supplier_Zip"].ToString() + "\n";
            }

            conn.Close();
        }
    }
    protected void accountsDetails_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        String acctID = accountsDetails_ddl.SelectedValue.ToString();


        string oString = "Select * from acct_rec_detail where acct_ID = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", acctID);
        conn.Open();
        using (SqlDataReader oReader = oCmd.ExecuteReader())
        {
            while (oReader.Read())
            {
                outInformationTextBox_txt.Text = "Account ID: " + oReader["acct_id"].ToString() + "\n" +
                                                 "Account Balance: " + oReader["acct_bal"].ToString() + "\n" +
                                                 "Amount Due: " + oReader["Amt_due"].ToString() + "\n" +
                                                 "Date Due: " + oReader["date_due"].ToString() + "\n";
                                                 

            }

            conn.Close();
        }
    }
    protected void eventsDetails_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        String eventID = eventsDetails_ddl.SelectedValue.ToString();


        string oString = "Select * from events where event_id = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", eventID);
        conn.Open();
        using (SqlDataReader oReader = oCmd.ExecuteReader())
        {
            while (oReader.Read())
            {
                outInformationTextBox_txt.Text = "Event name: " + oReader["event_name"].ToString() + "\n" +
                                                 "Event Location: " + oReader["event_location"].ToString() + "\n" +
                                                 "Event Date:" + oReader["Event_date"].ToString() + "\n" ;
            }

            conn.Close();
        }
    }
    protected void contracts_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        String contractID = contracts_ddl.SelectedValue.ToString();


        string oString = "Select * from contracts where contract_id = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", contractID);
        conn.Open();
        using (SqlDataReader oReader = oCmd.ExecuteReader())
        {
            while (oReader.Read())
            {
                outInformationTextBox_txt.Text = "Event ID: " + oReader["Event_id"].ToString() + "\n" +
                                                 "Customer ID: " + oReader["Customer_id"].ToString() + "\n";
                                                 
            }

            conn.Close();
        }

        string jString = "Select * from contract_details where contract_id = @id";
        SqlCommand jCmd = new SqlCommand(jString, conn);
        jCmd.Parameters.AddWithValue("@id", contractID);
        conn.Open();
        using (SqlDataReader jReader = jCmd.ExecuteReader())
        {
            while (jReader.Read())
            {
                outInformationTextBox_txt.Text += "Account ID: " + jReader["acct_id"].ToString() + "\n" +
                                                 "Contract Date: " + jReader["contract_date"].ToString() + "\n" +
                                                 "Deposit Amount: " + jReader["deposit_amt"].ToString() + "\n";
            }

            conn.Close();
        }
    }
    protected void services_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        String serviceID = services_ddl.SelectedValue.ToString();


        string oString = "Select * from special_services where service_id = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", serviceID);
        conn.Open();
        using (SqlDataReader oReader = oCmd.ExecuteReader())
        {
            while (oReader.Read())
            {
                outInformationTextBox_txt.Text = "Service name: " + oReader["service_name"].ToString() + "\n" +
                                                 "Service Price: " + oReader["service_price"].ToString() + "\n";
            }

            conn.Close();
        }
    }
    protected void inventoryDetails_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        String invID = inventoryDetails_ddl.SelectedValue.ToString();
        String unprepID = "";

        string oString = "Select * from inventory where inventory_id = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", invID);
        conn.Open();
        using (SqlDataReader oReader = oCmd.ExecuteReader())
        {
            while (oReader.Read())
            {
                unprepID = oReader["unprepared_item_id"].ToString();
                outInformationTextBox_txt.Text = "QOH : " + oReader["qoh"].ToString() + "\n" +
                                                 "Minimum amount: " + oReader["min_amt"].ToString() + "\n" +
                                                 "Maximum amount: " + oReader["max_amt"].ToString() + "\n" +
                                                 "Process Date: " + oReader["process_date"].ToString() + "\n" +
                                                 "Expiry Date: " + oReader["expiry_date"].ToString() + "\n";
            }

            conn.Close();
        }

        string mString = "Select * from unprepared_item where unprepared_item_id = @id";
        SqlCommand mCmd = new SqlCommand(mString, conn);
        mCmd.Parameters.AddWithValue("@id", unprepID);
        conn.Open();
        using (SqlDataReader mReader = mCmd.ExecuteReader())
        {
            while (mReader.Read())
            {

                outInformationTextBox_txt.Text += "Category ID : " + mReader["category_id"].ToString() + "\n" +
                                                 "Item Name: " + mReader["item_name"].ToString() + "\n" +
                                                 "Item Price: " + mReader["item_price"].ToString() + "\n";                                     
            }

            conn.Close();
        }
    }
    protected void purchases_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        String poID = purchases_ddl.SelectedValue.ToString();
        String unprepID = "";

        string oString = "Select * from po_details where purchase_order_id = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", poID);
        conn.Open();
        using (SqlDataReader oReader = oCmd.ExecuteReader())
        {
            while (oReader.Read())
            {
                unprepID = oReader["unprepared_item_id"].ToString();
                outInformationTextBox_txt.Text = "Quantity : " + oReader["quantity"].ToString() + "\n";
            }

            conn.Close();
        }

        string mString = "Select * from unprepared_item where unprepared_item_id = @id";
        SqlCommand mCmd = new SqlCommand(mString, conn);
        mCmd.Parameters.AddWithValue("@id", unprepID);
        conn.Open();
        using (SqlDataReader mReader = mCmd.ExecuteReader())
        {
            while (mReader.Read())
            {

                outInformationTextBox_txt.Text += "Category ID : " + mReader["category_id"].ToString() + "\n" +
                                                 "Item Name: " + mReader["item_name"].ToString() + "\n" +
                                                 "Item Price: " + mReader["item_price"].ToString() + "\n";
            }

            conn.Close();
        }
    }
    protected void submmit_btn_Click(object sender, EventArgs e)
    {

    }
}