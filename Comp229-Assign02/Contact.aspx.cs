using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendContact_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                MailMessage mail = new MailMessage();
                mail.To.Add("support@stapso.com");
                mail.From = new MailAddress(txtEmail.Text);
                mail.Subject = "Contact";
                mail.Body = "Customer name: " + txtName.Text + "\nPhone: " + txtPhone.Text + "\nComments:\n" + txtComments.Text;
                SmtpClient smtpClient = new SmtpClient(); // need to examine it later more
                smtpClient.Send(mail);
            }
        }
    }
}