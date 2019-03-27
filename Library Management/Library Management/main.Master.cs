﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Attendant.isLoggedIn())
                Response.Redirect("~/Login");

            ltrAttendantFullName.Text = Session["FullName"].ToString();
        }
    }
}