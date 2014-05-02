using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editSupInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Convert.ToBoolean(Request.Cookies["cred"]["mgr"]))
        {
            Response.Redirect("InvalidLoginCredentials.aspx");
        }
    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        supplierID_tb.Text = "";
        supplierName_tb.Text = "";
        supplierPhone_tb.Text = "";
        supplierFax_tb.Text = "";
        supplierEmail_tb.Text = "";
        supplierStreet_tb.Text = "";
        supplierCity_tb.Text = "";
        supplierState_tb.Text = "";
        supplierZip_tb.Text = "";
        supplierID_tb.Visible = true;
        SupplierID_lbl.Visible = false;
        choosesupplierid_ddl.Visible = false;
        actionToPerform_ddl.SelectedIndex = 0;
        choosesupplierid_ddl.SelectedIndex = 0;
        supplierID_tb.Visible = true;
        supplierName_tb.Visible = true;
        SupplierName_lbl.Visible = false;
        SupplierID_lbl.Visible = false;
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {

    }
    protected void actionToPerform_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (actionToPerform_ddl.SelectedIndex == 2 || actionToPerform_ddl.SelectedIndex == 3)
            choosesupplierid_ddl.Visible = true;
        else
        {
            supplierName_tb.Visible = true;
            supplierID_tb.Visible = true;
            choosesupplierid_ddl.Visible = false;
            SupplierID_lbl.Visible = false;
            SupplierName_lbl.Visible = false;
        }
    }
    protected void home_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("mgmtTasks.aspx");
    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void choosesupplierid_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        SupplierID_lbl.Text = choosesupplierid_ddl.SelectedValue.ToString();
        SupplierName_lbl.Text = choosesupplierid_ddl.SelectedItem.ToString();
        supplierName_tb.Visible = false;
        SupplierName_lbl.Visible = true;
        SupplierID_lbl.Visible = true;
        supplierID_tb.Visible = false;
    }
}