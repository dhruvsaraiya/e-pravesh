using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.AdminAccess
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Request.QueryString.HasKeys() && Request.QueryString["nv"] != null)
            {
                string message;
                if (Request.QueryString["nv"].Equals("1"))
                {
                    message = "Login Or Register First!!";
                }
                else if (Request.QueryString["nv"].Equals("2"))
                {
                    message = "unauthorized access";
                }
                else if (Request.QueryString["nv"].Equals("4"))
                {
                    message = "logout successful";
                }
                else
                {
                    message = "Don't mess with us, you will be screwed ";
                }

                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string username = usernameTxt.Text;
                string password = passwordTxt.Text;
                string role = "admin";
                string captcha = captchaTxt.Text;
                if (captcha.ToLower() != Session["CaptchaVerify"].ToString())
                {
                    captchaLabel.Text = "Incorrect Captcha Code!!";
                    captchaLabel.ForeColor = System.Drawing.Color.Red;
                }
                admissionEntities ae = new admissionEntities();
                Login l = ae.Logins.Where(s => s.username == username && s.password == password && s.role == role).FirstOrDefault<Login>();
                if (l.username == null)
                {
                    invalidLabel.Text = "Invalid username or password!!";
                }
                else
                {
                    Session["username"] = username;
                    Session["role"] = "admin";
                    Response.Redirect("Home.aspx");
                }

            }
            catch (Exception err)
            {

            }

        }
    }
}