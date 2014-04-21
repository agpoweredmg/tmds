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
    }
}