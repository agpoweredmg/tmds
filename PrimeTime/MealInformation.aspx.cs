using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MealInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 1;
        DropDownList3.SelectedIndex = 2;
        DropDownList4.SelectedIndex = 3;
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}