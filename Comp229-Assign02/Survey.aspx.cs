﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class Survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // a loop to generate the list of age
            for (int i = 12; i < 95; i++)
            {
                ddlAge.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

        }

        protected void btnSubmit_Click(Object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Response.Redirect("SecondSurvey.aspx?Name="+txtFirstName.Text);
            }     
        }
    }
}