using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.StudentAccess
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null || Session["role"] == null)
            {
                Response.Redirect("index.aspx?nv=1");
            }
            
            if (Request.QueryString.HasKeys() && Request.QueryString["nv"] != null)
            {
                if (Request.QueryString["nv"].Equals("2"))
                {
                    Session.Abandon();
                    Response.Redirect("index.aspx?nv=2");
                }
            }
            Session.Abandon();
            Response.Redirect("index.aspx?nv=4");


        }
    }
}