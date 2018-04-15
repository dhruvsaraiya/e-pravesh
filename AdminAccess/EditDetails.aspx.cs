using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.Admin
{
    public partial class WebForm6 : System.Web.UI.Page
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

            Panel2.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            FormView1.Focus();
        }
    }
}