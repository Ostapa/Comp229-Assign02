using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class ThankYou : System.Web.UI.Page
    { 
        protected void Page_Init(Object sender, EventArgs e)
        {
            for (int i = 1; i < 4; i++)
            {
                if (Application["survey"+i.ToString()] == null) // checks if all three survey pages are completed
                {
                    Response.Redirect("Error.aspx");
                }
            }
            
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}