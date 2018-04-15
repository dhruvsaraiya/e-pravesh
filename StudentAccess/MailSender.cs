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

namespace e_Pravesh.StudentAccess
{
    public class MailSender
    {
        public static string sendMail(string mail_id,string username,string pin)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.mail.com");

                mail.From = new MailAddress("dhruvesh11297@mail.com");
                mail.To.Add(mail_id);
                mail.Subject = "Registration Successfull";
                mail.IsBodyHtml = true;
                mail.Body = "You have successfully registered with username As  "+username+"<br/>"+"Please Note Down Your Pin : "+pin+"<br/>"+" BEST OF LUCK For Future Studies";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("dhruvesh11297@mail.com", "rajodiya11297");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                return ("Mail Successfully Sent....");
            }
            catch(Exception ec)
            {
                return ("Mail Not Sent???????");
            }
        }
    }
}