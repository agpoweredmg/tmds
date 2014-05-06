using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;



public partial class EmployeeInformation : System.Web.UI.Page
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
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        
        if (chooseAction_ddl.SelectedIndex == 1)
        {
            SqlCommand command = new SqlCommand("new_employee", conn);

            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@emp_ssn", ssn_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_f_name", FirstName_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_l_name", lastName_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_phone", phone_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_alt_phone", altPhone_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_hir_date", hireDate_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_end_date", endDate_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_pass", password_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_manager_y_n", manager_chkbx.Text.ToString());
        
            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
           
        }
        if (chooseAction_ddl.SelectedIndex == 3)
        {
            SqlCommand command = new SqlCommand("update_employee", conn);

            command.CommandType = CommandType.StoredProcedure;
            int num = 0;
            if (manager_chkbx.Checked == true)
            {
                num = 1;
            }
            command.Parameters.AddWithValue("@emp_id", ID_lbl.Text.ToString());
            command.Parameters.AddWithValue("@emp_ssn", ssn_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_f_name", FirstName_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_l_name", lastName_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_phone", phone_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_alt_phone", altPhone_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_hir_date", hireDate_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_end_date", endDate_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_pass", password_tb.Text.ToString());
            command.Parameters.AddWithValue("@emp_manager_y_n", num);

            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
        }
        if (chooseAction_ddl.SelectedIndex == 2)
        {
            SqlCommand command = new SqlCommand("delete_employee", conn);

            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@emp_id", chooseemployee_ddl.SelectedValue.ToString());
            
            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
            
        }
    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        id_tb.Text = "";
        FirstName_tb.Text = "";
        lastName_tb.Text = "";
        ssn_tb.Text = "";
        hireDate_tb.Text = "";
        endDate_tb.Text = "";
        phone_tb.Text = "";
        altPhone_tb.Text = "";
        password_tb.Text = "";
        manager_chkbx.Checked = false;
        chooseAction_ddl.SelectedIndex = 0;
        chooseemployee_ddl.Visible = false;
        ID_lbl.Visible = false;
        LastName_lbl.Visible = false;
        id_tb.Visible = true;
        lastName_tb.Visible = true;

    }
    protected void chooseAction_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (chooseAction_ddl.SelectedIndex == 2 || chooseAction_ddl.SelectedIndex == 3)
            chooseemployee_ddl.Visible = true;

    }

    protected void manager_chkbx_CheckedChanged(object sender, EventArgs e)
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
    protected void id_tb_TextChanged(object sender, EventArgs e)
    {

    }
    protected void chooseemployee_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

        string ID = chooseemployee_ddl.SelectedValue.ToString();
        string oString = "Select * from Employees where Emp_ID = @id";
        SqlCommand oCmd = new SqlCommand(oString, conn);
        oCmd.Parameters.AddWithValue("@id", ID);
        SqlDataReader oReader;
        try
        {

            conn.Open();
            oReader = oCmd.ExecuteReader();

            while (oReader.Read())
            {

                FirstName_tb.Text = oReader["Emp_F_Name"].ToString();
                lastName_tb.Text = oReader["Emp_L_Name"].ToString();
                ssn_tb.Text = oReader["Emp_SSN"].ToString();
                hireDate_tb.Text = oReader["Emp_Hire_Date"].ToString();
                endDate_tb.Text = oReader["Emp_End_Date"].ToString();
                phone_tb.Text = oReader["Emp_Phone"].ToString();
                altPhone_tb.Text = oReader["Emp_Alt_Phone"].ToString();
                password_tb.Text = oReader["Emp_Pass"].ToString();
                manager_chkbx.Text = oReader["Emp_Manger_Y_N"].ToString();

            }

        }
        catch (Exception ex)
        {
            
            ID_lbl.Text = chooseemployee_ddl.SelectedValue.ToString();
            LastName_lbl.Text = chooseemployee_ddl.SelectedItem.ToString();
            ID_lbl.Visible = true;
            LastName_lbl.Visible = true;
            id_tb.Visible = false;
            lastName_tb.Visible = false;
            
        }

    }
    
}