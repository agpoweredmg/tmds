using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        contractID_tb.Text = "";
        accountID_tb.Text = "";
        contractDate_tb.Text = "";
        depositAmount_tb.Text = "";
        discount_tb.Text = "";
    }
}