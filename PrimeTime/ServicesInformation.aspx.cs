using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ServicesInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Convert.ToBoolean(Request.Cookies["cred"]["mgr"]))
        {
            Response.Redirect("InvalidLoginCredentials.aspx");
        }
    }
    protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void chooseAction_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {

    }
}