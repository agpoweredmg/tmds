using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class SalesRepresentativeInformation : System.Web.UI.Page
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
            SqlCommand command = new SqlCommand("new_sales_rep", conn);

            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@rep_f_name", firstName_tb.Text.ToString());
            command.Parameters.AddWithValue("@rep_l_name", lastName_tb.Text.ToString());
            command.Parameters.AddWithValue("@rep_phone", phone_tb.Text.ToString());
            command.Parameters.AddWithValue("@rep_alt_phone", altPhone_tb.Text.ToString());
            command.Parameters.AddWithValue("@rep_email", email_tb.Text.ToString());


            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
        }

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        salesRepID_tb.Text = "";
        firstName_tb.Text = "";
        lastName_tb.Text = "";
        phone_tb.Text = "";
        altPhone_tb.Text = "";
        email_tb.Text = "";
        chooseAction_ddl.SelectedIndex = 0;
    }
    protected void chooseAction_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

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
}