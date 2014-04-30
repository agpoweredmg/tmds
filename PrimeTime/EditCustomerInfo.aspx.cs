using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditCustomerInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
    protected void FirstName_tb_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Submit_btn_Click(object sender, EventArgs e)
    {

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