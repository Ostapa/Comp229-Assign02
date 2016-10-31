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
            for (int i = 0; i < cblProductsOwned.Items.Count; i++)
            {
                if (cblProductsOwned.Items[i].Selected)
                {
                    e.IsValid = true;
                }
                else e.IsValid = false;
            }
        }

        protected void btnSubmit_Click(Object sender, EventArgs e)
        {
            CheckBoxList nonSelectedFeatures = new CheckBoxList();
            string lastQuestionUrl = "";

            // a loop to create an array of non-checked features to include them in the question on the last page
            for (int i = 0; i < cblFeatures.Items.Count; i++)
            {
                if(!cblFeatures.Items[i].Selected)
                {
                    nonSelectedFeatures.Items.Add(cblFeatures.Items[i]);
                }
            }
            // a loop to set a string with values of non-selected features in order to pass them in the url
            for (int i = 0; i < nonSelectedFeatures.Items.Count; i++)
            {
                lastQuestionUrl += "&" + nonSelectedFeatures.Items[i].Text + "=" + nonSelectedFeatures.Items[i].Text;
            }

            if (Page.IsValid)
            {
                Response.Redirect("ThirdSurvey.aspx?firstQ=" + rblProductPurpose.Text + "&secondQ="+deviceUsageRange.Text +
                                  "&thirdQ=" + rblSatisfiedNeeds.Text + lastQuestionUrl + "&length=" + nonSelectedFeatures.Items.Count);
            }
        }


    }
}