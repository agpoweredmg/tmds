using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SalesRepresentativeInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
       

    }
    protected void ClearButton_Click(object sender, EventArgs e)
    {

        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;
        TextBox4.Visible = true;
        TextBox5.Visible = true;
        TextBox6.Visible = true;
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }



    protected void BackButton(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeMain.aspx");
    }
    protected void HomeButton(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeMain.aspx");
    }
}
