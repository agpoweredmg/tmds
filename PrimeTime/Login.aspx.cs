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
    private HttpCookie credential = new HttpCookie("lcCookie");
    private DateTime loginTime = DateTime.Now;
    private SqlDataReader reader;

    protected void Page_Load(object sender, EventArgs e)
    {

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
        bool mgr = Convert.ToBoolean(command.Parameters["@mgr"].Value);
        conn.Close();

        Label1.Text = mgr.ToString();
    }
}