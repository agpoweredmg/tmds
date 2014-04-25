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

    }
    protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if DropDownList4.SelectedIndex = 2
            TextBox2.Visible = false;
            TextBox3.Visible = false;
        else
        if DropDownList4.SelectedIndex = 4
            TextBox2.Visible = false;
            TextBox3.Visible = false;
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;
        TextBox4.Visible = true;
        DropDownList4.SelectedIndex = 0;
    }
    protected void Button9_Click(object sender, EventArgs e)
    {

    }
}