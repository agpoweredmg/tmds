using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InventoryInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chooseAction_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (chooseAction_ddl.SelectedIndex == 2 || chooseAction_ddl.SelectedIndex == 3)
            ChooseInventoryID_ddl.Visible = true;
        else
        {
            id_tb.Visible = true;
            ID_lbl.Visible = false;
            name_tb.Visible = true;
            Name_lbl.Visible = false;
            ChooseInventoryID_ddl.Visible = false;
        }
    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        id_tb.Text = "";
        name_tb.Text = "";
        category_tb.Text = "";
        cost_tb.Text = "";
        expirationDate_tb.Text = "";
        quantityOnHand_tb.Text = "";
        minimum_tb.Text = "";
        maximum_tb.Text = "";
        chooseAction_ddl.SelectedIndex = 0;
        ChooseInventoryID_ddl.Visible = false;
        ChooseInventoryID_ddl.SelectedIndex = 0;
        ID_lbl.Visible = false;
        id_tb.Visible = true;
        name_tb.Visible = true;
        Name_lbl.Visible = false;
    }
    protected void back_btn_Click(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
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
    protected void ChooseInventoryID_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        ID_lbl.Text = ChooseInventoryID_ddl.SelectedItem.ToString();
        Name_lbl.Text = ChooseInventoryID_ddl.SelectedValue.ToString();
        ID_lbl.Visible = true;
        id_tb.Visible = false;
        name_tb.Visible = false;
        Name_lbl.Visible = true;
    }
}