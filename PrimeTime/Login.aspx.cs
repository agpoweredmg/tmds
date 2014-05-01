using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    private SqlConnection conn = new SqlConnection("Data Source=apcxcs3.apsu.edu;Initial Catalog=group3_6;Persist Security Info=True;User ID=webuser3_6;Password=webuser3_6abc");
    private SqlCommand command;


    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void login_btn_Click(object sender, EventArgs e)
    {
        command = new SqlCommand("check_for_mgr", conn);
        command.CommandType = CommandType.StoredProcedure;
        command.Parameters.AddWithValue("@empid", userName_txt.Text.ToString());
        command.Parameters.AddWithValue("@emppass", passWord_txt.Text.ToString());
        command.Parameters.Add("@mgr", SqlDbType.Bit).Direction = ParameterDirection.Output;

        conn.Open();
        command.ExecuteNonQuery();

        bool mgr;

        if (command.Parameters["@mgr"].Value is DBNull)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Visible = true;
            Label1.Text = "User ID or Password is INCORRECT.";
            return;
        }
        else
        {

            mgr = Convert.ToBoolean(command.Parameters["@mgr"].Value);
        }
        conn.Close();

        Response.Cookies["cred"]["mgr"] = mgr.ToString();
        Response.Cookies["cred"]["uname"]= userName_txt.Text.ToString();
        Response.Cookies["cred"].Expires = DateTime.Now.AddHours(1);

        //String one = Request.Cookies["cred"]["mgr"];
        //String two = Request.Cookies["cred"]["uname"];
        //Label1.Text = one + ", " + two;

        if (mgr)
        {
            Response.Redirect("mgmtTasks.aspx");
        }
        else if (!mgr)
        {
            Response.Redirect("EmployeeMain.aspx");
        }
            
    }
}