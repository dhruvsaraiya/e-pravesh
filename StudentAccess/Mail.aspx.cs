using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;

using System.Collections;

using System.Configuration;

using System.Data;

using System.Web.Security;

using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using System.Net.Mail;

using System.Net;

using System.Drawing;

using System.IO;



namespace e_Pravesh.AdminAccess
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null || Session["role"] == null)
            {
                Response.Redirect("AdminLogin.aspx?nv=1");
            }
            else
            {
                string role = (string)Session["role"];
                if (!role.Equals("admin"))
                {
                    Response.Redirect("logout.aspx?nv=2");
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.mail.com");

                mail.From = new MailAddress("dhruvesh11297@mail.com");
                mail.To.Add("dhruvesh11297@gmail.com");
                mail.Subject = "Test Mail";
                mail.Body = "This is for testing SMTP mail from GMAIL";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("dhruvesh11297@mail.com", "rajodiya11297");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                
            
            
            /*MailMessage mail = new MailMessage();
            // smtp settings

            SmtpClient smtp = new SmtpClient("smtp.mail.com", 587);
            smtp.EnableSsl = true;
            //smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new System.Net.NetworkCredential("errs.xyz@mail.com", "errs1234");
            //NetworkCredential SMTPUserInfo = new NetworkCredential("anwar@csharpexample.com", "Aic12234@");
            mail.From = new MailAddress("errs.xyz@mail.com");



            mail.To.Add(new MailAddress("dhruvesh11297@gmail.com"));



            //set the content

            mail.Subject = "Enquiry Form";
            //Body to be displayed
            mail.Body = "sdaasgidb adbk";
            //mail.Body = "Hi";
            mail.IsBodyHtml = true;
            // smtp settings

            //smtp.Credentials = SMTPUserInfo;

            try
            {
                smtp.Send(mail);
            }
            catch(Exception ec)
            {
                Response.Write("Lodo Maro");
            }
            */
        }
    }
}