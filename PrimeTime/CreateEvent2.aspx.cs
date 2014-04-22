using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateEvent2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        eventName_txt.Text = " ";
        eventDate.Text = " ";
        eventLocation_txt.Text = " ";
        services_listBox.ClearSelection();
        entreeCost_txt.Text = " ";
        entreeQtn_txt.Text = " ";
        mealDetails_ddl.ClearSelection();
        side1_2Qtn_txt.Text = " ";
        side1_ddl.ClearSelection();
        side2_ddl.ClearSelection();
        altrSide1_2Qtn.Text = " ";
        alterSide1_ddl.ClearSelection();
        

    }
}