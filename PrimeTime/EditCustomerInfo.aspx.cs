using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class EditCustomerInfo : System.Web.UI.Page
{
    private SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");
    private SqlCommand command;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Convert.ToBoolean(Request.Cookies["cred"]["mgr"]))
        {
            Response.Redirect("InvalidLoginCredentials.aspx");
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
    protected void FirstName_tb_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Submit_btn_Click(object sender, EventArgs e)
    {
        if (ChooseCustomerActions_ddl.SelectedIndex == 1)
        {
            SqlCommand command = new SqlCommand("new_customer", conn);

            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@first_name", FirstName_tb.Text.ToString());
            command.Parameters.AddWithValue("@last_name", LastName_tb.Text.ToString());
            command.Parameters.AddWithValue("@phone1", PhoneNumber_tb.Text.ToString());
            command.Parameters.AddWithValue("@phone2", AlternateNumber_tb.Text.ToString());
            command.Parameters.AddWithValue("@email", Email_tb.Text.ToString());


            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
        }
        if (ChooseCustomerActions_ddl.SelectedIndex == 2)
        {
            SqlCommand command = new SqlCommand("delete_customer", conn);

            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@cust_id", customerID_tb.Text.ToString());
            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
        }
    }
    protected void Clear_btn_Click(object sender, EventArgs e)
    {
        customerID_tb.Text = "";
        FirstName_tb.Text = "";
        LastName_tb.Text = "";
        PhoneNumber_tb.Text = "";
        AlternateNumber_tb.Text = "";
        Email_tb.Text = "";
        ChooseCustomerActions_ddl.SelectedIndex = 0;
    }


    protected void customerID_tb_TextChanged(object sender, EventArgs e)
    {

    }


}