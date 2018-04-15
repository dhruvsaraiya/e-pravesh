using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.StudentAccess
{
    public partial class WebForm3 : System.Web.UI.Page
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

            //if querystring a=1 then alert=choices are locked;
            usernameLabel.Text = (string)Session["username"];
            string username = (string)Session["username"];
            try
            {
                admissionEntities ae = new admissionEntities();
                if (Request.QueryString.HasKeys() && Request.QueryString["a"] != null)
                {
                    string message;
                    if (Request.QueryString["a"].Equals("1"))
                    {
                        message = "Your Choices Are Locked";
                    }
                    else if (Request.QueryString["a"].Equals("2"))
                    {
                        message = "Not Allowed";
                    }
                    else
                    {
                        message = "";
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


                StudentDetail sd = ae.StudentDetails.Where(s => s.std_id == username).FirstOrDefault<StudentDetail>();
                nameLabel.Text = sd.std_name;
                categoryLabel.Text = sd.Category.category_name;
                emailLabel.Text = sd.email_id;
                dobLabel.Text = sd.dob.ToString();
                contactLabel.Text = sd.contact_no;
                if (sd.rank == 0)
                {
                    rankLabel.Text = "Rank Not Generated Yet";
                }
                else
                {
                    rankLabel.Text = ((int)sd.rank).ToString();
                }
                pinLabel.Text = sd.pin;
                programLabel.Text = sd.Program1.program_name;
                if (sd.verified == 0)
                {
                    verifiedLabel.ForeColor = System.Drawing.Color.Red;
                    verifiedLabel.Text = "Not Verified";
                }
                else
                {
                    verifiedLabel.ForeColor = System.Drawing.Color.Green;
                    verifiedLabel.Text = "Verified";
                }

            }
            catch (Exception err)
            {

            }

        }
    }
}