using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace e_Pravesh.Student
{
    public partial class WebForm1 : System.Web.UI.Page
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
    }
}