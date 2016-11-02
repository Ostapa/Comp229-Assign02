using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class SecondSurvey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CheckBoxRequired_Validate(Object sender, ServerValidateEventArgs e)
        {
            if (cblProductsOwned.SelectedItem == null || cblFeatures.SelectedItem == null)
            {
                e.IsValid = false;
            }
            else e.IsValid = true;
        }

        protected void btnSubmit_Click(Object sender, EventArgs e)
        {
            CheckBoxList nonSelectedFeatures = new CheckBoxList();

            if (Page.IsValid)
            {
                Application["firstQ"] = rblProductPurpose.Text;
                Application["secondQ"] = rblDeviceUsage.Text;
                Application["thirdQ"] = rblSatisfiedNeeds.Text;
                
                
                // a loop to create an array of non-checked features to use them in the question on the last page
                for (int i = 0; i < cblFeatures.Items.Count; i++)
                {
                    if (!cblFeatures.Items[i].Selected)
                    {
                        nonSelectedFeatures.Items.Add(cblFeatures.Items[i]);
                    }
                }
                // a loop to set a values in AplicationSettings
                for (int i = 0; i < nonSelectedFeatures.Items.Count; i++)
                {
                    Application[nonSelectedFeatures.Items[i].Text] = nonSelectedFeatures.Items[i].Text;
                }
                Application["numOfFeatures"] = nonSelectedFeatures.Items.Count;
                Response.Redirect("ThirdSurvey.aspx");
                
            }
        }


    }
}