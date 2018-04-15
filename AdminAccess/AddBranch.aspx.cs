using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace e_Pravesh.Admin
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void addbranchButton_Click(object sender, EventArgs e)
        {
            try
            {
                int cid = Int32.Parse(collegeDropDownList.SelectedValue);
                int bid = Int32.Parse(branchDropDownList.SelectedValue);
                int pid = Int32.Parse(programDropDownList.SelectedValue);
                int gen = Int32.Parse(generalTextBox.Text);
                int obc = Int32.Parse(obcTextBox.Text);
                int sc = Int32.Parse(scTextBox.Text);
                int st = Int32.Parse(stTextBox.Text);
                admissionEntities ae = new admissionEntities();
                Branch_College bc = new Branch_College();
                bc.branch_id = bid;
                bc.college_id = cid;
                bc.program_id = pid;
                bc.general = gen;
                bc.obc = obc;
                bc.sc = sc;
                bc.st = st;
                ae.Branch_College.Add(bc);
                ae.SaveChanges();
                Response.Redirect(Request.RawUrl);
                errLabel.Text = "";
            }
            catch (Exception err)
            {
                errLabel.Text = "some error";
            }


        }

        protected void finishButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}