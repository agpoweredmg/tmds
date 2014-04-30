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
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        entree_ddl.SelectedIndex = 0;
        sideOne_ddl.SelectedIndex = 0;
        sideTwo_ddl.SelectedIndex = 0;
        chooseAction_ddl.SelectedIndex = 0;
        numberOfMeals_tb.Text = "";
        totalCost_tb.Text = "";
    }
        protected void submit_btn_Click(object sender, EventArgs e)
    {

    }
    protected void chooseAction_ddl_SelectedIndexChanged(object sender, EventArgs e)
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
}