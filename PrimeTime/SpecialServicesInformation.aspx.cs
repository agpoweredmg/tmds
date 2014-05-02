using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class ServicesInformation : System.Web.UI.Page
{
    private SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");
    private SqlCommand command;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void home_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("mgmtTasks.aspx");
    }
    protected void Clear_btn_Click(object sender, EventArgs e)
    {
        ServiceID_tb.Text = "";
        ServiceName_tb.Text = "";
        ServicePrice_tb.Text = "";
        ChooseSpecialServices_ddl.SelectedIndex = 0;
    }
    protected void Submit_btn_Click(object sender, EventArgs e)
    {
        if (ChooseSpecialServices_ddl.SelectedIndex == 1)
        {
            SqlCommand command = new SqlCommand("new_special_service", conn);

            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@srvice_name", ServiceName_tb.Text.ToString());
            command.Parameters.AddWithValue("@service_price", ServicePrice_tb.Text.ToString());


            conn.Open();

            command.ExecuteNonQuery();

            conn.Close();
        }
    }
}
