﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editEventInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_btn_Click(object sender, EventArgs e)
    {
        eventID_tb.Text = "";
        eventName_tb.Text = "";
        eventLocation_tb.Text = "";
        eventDate_tb.Text = "";

    }
}