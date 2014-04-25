using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editAccInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        accountID_tb.Text = "";
        accountBalance_tb.Text = "";
        amountDue_tb.Text = "";
        dateDue_tb.Text = "";
    }
    protected void accountID_tb_TextChanged(object sender, EventArgs e)
    {

    }
}