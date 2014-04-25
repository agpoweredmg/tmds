using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SuppliersInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ClearButton_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if DropDownList4.SelectedIndex = 4
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            TextBox9.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;
        TextBox4.Visible = true;
        TextBox5.Visible = true;
        TextBox6.Visible = true;
        TextBox7.Visible = true;
        TextBox8.Visible = true;
        TextBox9.Visible = true;
        DropDownList4.SelectedIndex = 0;
    }
}