using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditLostOrDamagedItems : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
    protected void Submit_btn_Click(object sender, EventArgs e)
    {

    }
    protected void Clear_btn_Click(object sender, EventArgs e)
    {
        LostDamageID_tb.Text = "";
        InventoryID_tb.Text = "";
        QuantityLost_tb.Text = "";
        ChooseDamagedItemsActions_ddl.SelectedIndex = 0;
    }
    protected void back_btn_Click(object sender, EventArgs e)
    {

    }
}