using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.StudentAccess
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null || Session["role"] == null)
            {
                Response.Redirect("index.aspx?nv=1");
            }
            else
            {
                string role = (string)Session["role"];
                if (!role.Equals("student"))
                {
                    Response.Redirect("logout.aspx?nv=2");
                }
            }
            string username = (string)Session["username"];
            admissionEntities ae = new admissionEntities();
            var x = from a in ae.Student_Choice where a.std_id == username select a;
            Boolean lockFlag = false;
            if (x.Count() > 0)
            {
                foreach (var x1 in x)
                {
                    if (x1.status != null && x1.status.Equals("locked"))
                    {
                        lockFlag = true;
                    }
                }
                if (lockFlag)
                {
                    editButton.Enabled = false;
                    lockButton.Enabled = false;
                    //Response.Redirect("lockChoices.aspx?l=1");
                }
            }
            if (Request.QueryString.HasKeys() && Request.QueryString["l"] != null)
            {
                string message = "Your Choices Are Locked!!";
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

        protected void editButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("choiceFilling.aspx");
        }

        protected void lockButton_Click(object sender, EventArgs e)
        {
            string username = (string)Session["username"];
            admissionEntities ae = new admissionEntities();
            var x = from s in ae.Student_Choice where s.std_id == username select s;
            foreach (var x1 in x)
            {
                x1.status = "locked";
            }
            ae.SaveChanges();
            Response.Redirect("home.aspx?a=1");
        }
    }
}