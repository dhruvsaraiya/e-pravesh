using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.Admin
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        int cid;
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

            if (IsPostBack)
            {
                Panel2.Visible = true;
                programDropDownList.Focus();

            }
            else
            {
                Panel2.Visible = false;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        admissionEntities ae;
        protected void Button1_Click(object sender, EventArgs e)
        {
            branchaddButton.Enabled = false;
            ae = new admissionEntities();
            College c = new College();
            c.college_name = collegeTextBox.Text;
            c.contact_no = contactTextBox.Text;
            c.email_id = emailTextBox.Text;
            c.city = cityTextBox.Text;
            ae.Colleges.Add(c);
            ae.SaveChanges();
            cid = c.college_id;

            // Branch_Program bp = new Branch_Program();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            branchaddButton.Enabled = false;
            int gen = Int32.Parse(genTextBox.Text);
            int obc = Int32.Parse(obcTextBox.Text);
            int sc = Int32.Parse(scTextBox.Text);
            int st = Int32.Parse(stTextBox.Text);
            ae = new admissionEntities();
            Branch_College bc = new Branch_College();
            bc.college_id = cid;
            bc.branch_id = Int32.Parse(branchDropDownList.SelectedValue);
            bc.program_id = Int32.Parse(programDropDownList.SelectedValue);
            bc.general = gen;
            bc.obc = obc;
            bc.sc = sc;
            bc.st = st;
            ae.Branch_College.Add(bc);
            ae.SaveChanges();

        }
    }
}