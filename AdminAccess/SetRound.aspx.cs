using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DateTime start = Calendar1.SelectedDate;
            DateTime end = Calendar2.SelectedDate;

            if (flag1 && flag2)
            {
                int comp = DateTime.Compare(start, end);
                if (comp > 0)
                {
                    errLabel.Text = "Enter Valid Dates !!";
                    okLabel.Text = "";
                }
                else
                {
                    int pid = Int32.Parse(programDropDownList.SelectedValue);
                    int rid = Int32.Parse(roundDropDownList.SelectedValue);

                    try
                    {
                        admissionEntities ae = new admissionEntities();
                        Round r = ae.Rounds.Where(s => s.program_id == pid && s.round_id == rid).FirstOrDefault<Round>();
                        r.start_date = start;
                        r.end_date = end;
                        ae.SaveChanges();
                        errLabel.Text = "";
                        okLabel.Text = "-Dates set-";
                    }
                    catch (Exception err)
                    {
                        errLabel.Text = "Error!!";
                        okLabel.Text = "";
                    }

                }


            }

            else
            {
                errLabel.Text = "Date Required";
            }

        }
        Boolean flag1 = false;
        Boolean flag2 = false;
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            flag1 = true;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            flag2 = true;
        }
    }
}