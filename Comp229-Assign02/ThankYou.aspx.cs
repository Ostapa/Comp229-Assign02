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
                    Application["error"] = "Sorry, you must complete the <a href='Survey.aspx'>survey</a> to access this page";
                    Response.Redirect("Error.aspx");
                }
            }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string usage = null;
            string purposeSummary = null;

            switch (Application["secondQ"].ToString())
            {
                case "1":
                    usage = "never";
                    break;
                case "2":
                    usage = "seldom";
                    break;
                case "3":
                    usage = "sometimes";
                    break;
                case "4":
                    usage = "often";
                    break;
                case "5":
                    usage = "always";
                    break;
                default:
                    break;
            }

            personalInfo.Text = string.Format("Name: {0}<br/>Age: {1}<br/>Gender: {2}<br/>Email: {3}<br/>Phone: {4}<br/>Country: {5} ", 
                                               Application["fName"] + " " + Application["lName"], Application["age"], Application["gender"],
                                               Application["email"], Application["phone"], Application["country"]);
            customerFeedback.Text = string.Format("From the list of our products you own: {0}.<br/>" +
                                                  "You {1} use our devices for {2} purposes and you were moslty {3} with our devices.<br>" + 
                                                  "Overall you find {4} the most useful features of our devices.", Application["devicesOwned"], usage, 
                                                  Application["firstQ"], Application["satisfied"], Application["usefulFeatures"]);
            switch (Application["firstQ"].ToString())
            {
                case "personal":
                    purposeSummary = string.Format("<b>Personal needs:</b> {0}. For example, {1}.", Application["purposeFirst"].ToString().ToLower(), Application["purposeSecond"].ToString().ToLower());
                    break;
                case "business":
                    purposeSummary = string.Format("You work at {0} as a {1}.", Application["purposeFirst"], Application["purposeSecond"]);
                    break;
                case "studying":
                    purposeSummary = string.Format("You study at {0} pursuing {1}.", Application["purposeFirst"], Application["purposeSecond"]);
                    break;
                default:
                    break;
            }

            additionalInfo.Text = purposeSummary + string.Format("<br/>Rating: {0} stars<br/>Feedback: {1}.<br>Suggestions: {2}", Application["rating"],
                                                                                                                            Application["satisfaction"],
                                                                                                                            Application["toImprove"]);
        }
    }
}