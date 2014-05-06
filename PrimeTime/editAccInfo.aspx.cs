using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class editAccInfo : System.Web.UI.Page
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
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        accountID_tb.Text = "";
        accountBalance_tb.Text = "";
        amountDue_tb.Text = "";
        dateDue_tb.Text = "";
        actionToPerform_ddl.SelectedIndex = 0;
        accountID_tb.Visible = true;
        AccountID_lbl.Visible = false;
        AccountID_ddl.Visible = false;
        AccountID_ddl.SelectedIndex = 0;
    }

    protected void accountID_tb_TextChanged(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

        if (actionToPerform_ddl.SelectedIndex == 1)
        {
            SqlCommand command = new SqlCommand("new_acct", conn);

            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@Acct_Bal", accountBalance_tb.Text.ToString());
            command.Parameters.AddWithValue("@Amt_Due", amountDue_tb.Text.ToString());
            command.Parameters.AddWithValue("@Date_Due", dateDue_tb.Text.ToString());


            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
        }
      
    }
    protected void actionToPerform_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (actionToPerform_ddl.SelectedIndex == 2 || actionToPerform_ddl.SelectedIndex == 3)
            AccountID_ddl.Visible = true;
        AccountID_lbl.Visible = true;
        accountID_tb.Visible = false;
        AccountID_lbl.Text = AccountID_ddl.SelectedIndex.ToString();

    }
    protected void home_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("mgmtTasks.aspx");
    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void dateDue_tb_TextChanged(object sender, EventArgs e)
    {

    }
    protected void AccountID_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        string acctID = AccountID_ddl.SelectedValue.ToString();
        string oString = "Select * from Acct_Rec_Detail where Acct_ID = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", acctID);
        SqlDataReader oReader;
        try
        {

            conn.Open();
            oReader = oCmd.ExecuteReader();

            while (oReader.Read())
            {
                AccountID_lbl.Text = oReader["Acct_ID"].ToString();
                accountBalance_tb.Text = oReader["Acct_Bal"].ToString();
                amountDue_tb.Text = oReader["Amt_Due"].ToString();
                dateDue_tb.Text = oReader["Date_Due"].ToString();


            }

        }
        catch (Exception ex)
        {

            AccountID_lbl.Text = AccountID_ddl.SelectedItem.ToString();
            AccountID_lbl.Visible = true;
            accountID_tb.Visible = false;
        }
    }
}