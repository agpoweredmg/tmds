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
        if (!Convert.ToBoolean(Request.Cookies["cred"]["mgr"]))
        {
            Response.Redirect("InvalidLoginCredentials.aspx");
        }
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
        LostDamageID_ddl.SelectedIndex = 0;
        LostDamageID_lbl.Visible = false;
        InventoryID_lbl.Visible = false;
        LostDamageID_tb.Visible = true;
        InventoryID_tb.Visible = true;
        LostDamageID_ddl.Visible = false;
    }
    protected void back_btn_Click(object sender, EventArgs e)
    {

    }
    protected void ChooseDamagedItemsActions_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ChooseDamagedItemsActions_ddl.SelectedIndex == 2 || ChooseDamagedItemsActions_ddl.SelectedIndex == 3)
        {
            LostDamageID_ddl.Visible = true;
            
        }
        else if (ChooseDamagedItemsActions_ddl.SelectedIndex == 0 || ChooseDamagedItemsActions_ddl.SelectedIndex == 1)
            LostDamageID_lbl.Visible = false;
        InventoryID_lbl.Visible = false;
        LostDamageID_tb.Visible = true;
        InventoryID_tb.Visible = true;
        
    }
    protected void LostDamageID_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        LostDamageID_tb.Visible = false;
        InventoryID_tb.Visible = false;
        LostDamageID_lbl.Text = LostDamageID_ddl.SelectedValue.ToString();
        InventoryID_lbl.Text = LostDamageID_ddl.SelectedItem.ToString();
        InventoryID_lbl.Visible = true;
        LostDamageID_lbl.Visible = true;
        
    }
}