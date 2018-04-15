using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.Admin
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


            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Request.QueryString.HasKeys() && Request.QueryString["dt"] != null)
            {
                string message;
                if (Request.QueryString["dt"].Equals("1"))
                {
                    message = "Registration is not completed yet!";
                }
                else if (Request.QueryString["dt"].Equals("2"))
                {
                    message = "Rank is Already Generated!";
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

        Boolean flag = false;
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            flag = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime dt = Calendar1.SelectedDate;
            int compare = DateTime.Compare(dt, DateTime.Now);
            if (compare < 0)
            {
                errorLabel.Text = "Invalid Date";
            }
            else
            {
                Application["lastdateofregistration"] = dt;
                errorLabel.Text = "";
            }

        }
    }
}