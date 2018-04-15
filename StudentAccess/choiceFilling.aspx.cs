using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.StudentAccess
{
    public partial class WebForm5 : System.Web.UI.Page
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
            try
            {
                string username = (string)Session["username"]; ;
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
                        Response.Redirect("lockChoices.aspx?l=1");
                    }
                }
                usernameLabel.Text = username;
                int pid = (int)Session["course"];
                var abc = from s in ae.Programs where s.program_id == pid select s;
                foreach (var abcd in abc)
                {
                    if (abcd.program_name != null)
                    {
                        courseLabel.Text = abcd.program_name;
                    }
                }

                programidLabel.Text = ((int)Session["course"]).ToString();

                if (branchDropDownList.Items.Count == 0)
                {
                    branchDropDownList.Items.Add(new ListItem("---SELECT---", "0"));
                    var bd = (from b in ae.Branches join bp in ae.Branch_Program on b.branch_id equals bp.branch_id where bp.program_id == pid select b).Distinct();
                    foreach (var bd1 in bd)
                    {
                        branchDropDownList.Items.Add(new ListItem(bd1.branch_name, bd1.branch_id.ToString()));
                    }
                }


            }
            catch (Exception err)
            {

            }

            //IF CHOICES ARE LOCKED THEN THIS PAGE IS NOT ACCESSIBLE
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            btn.Enabled = false;
            string CommandArgument = btn.CommandArgument;
            string username = (string)Session["username"];
            int choiceid = Int32.Parse(CommandArgument);
            int[] r = (int[])Application["round"];

            int course = (int)Session["course"];
            int roundno = r[course];
            admissionEntities ae = new admissionEntities();
            var x = from c in ae.Student_Choice where c.std_id == username select c.preference_no;
            int maxp = 0;
            /* if (x == null)
             {
                 maxp = 0;
             }
             else {
                 maxp = (int)x.Max();
             }
             */
            foreach (var x1 in x)
            {
                if (x1 > maxp)
                {
                    maxp = (int)x1;
                }
            }
            maxp++;



            Student_Choice sc1 = ae.Student_Choice.Where(s => s.std_id == username && s.round_id == roundno && s.choice_id == choiceid).FirstOrDefault<Student_Choice>();
            if (sc1 == null)
            {
                Student_Choice sc = new Student_Choice();
                sc.choice_id = choiceid;
                sc.std_id = username;
                sc.round_id = r[course];
                sc.preference_no = maxp;
                ae.Student_Choice.Add(sc);
                ae.SaveChanges();
                //


                Response.Redirect(Request.RawUrl);
            }

        }

        protected void removeButton_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string CommandArgument = btn.CommandArgument;
            string username = (string)Session["username"];
            int choiceid = Int32.Parse(CommandArgument);
            int[] r = (int[])Application["round"];
            int course = (int)Session["course"];
            int roundno = r[course];
            int remp;
            try
            {
                admissionEntities ae = new admissionEntities();
                Student_Choice sc = ae.Student_Choice.Where(s => s.choice_id == choiceid && s.std_id == username && s.round_id == roundno).FirstOrDefault<Student_Choice>();
                remp = (int)sc.preference_no;
                ae.Student_Choice.Remove(sc);
                ae.SaveChanges();
                var x = from c in ae.Student_Choice where c.preference_no > remp && c.std_id == username select c;
                if (x != null)
                {
                    foreach (var x1 in x)
                    {
                        x1.preference_no -= 1;
                    }
                }

                ae.SaveChanges();
                Response.Redirect(Request.RawUrl);
            }
            catch (Exception err)
            {

            }


        }

        protected void upButton_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string CommandArgument = btn.CommandArgument;
            string username = (string)Session["username"];
            int choiceid = Int32.Parse(CommandArgument);
            int[] r = (int[])Application["round"];
            int course = (int)Session["course"];
            int roundno = r[course];
            int old, new1;
            try
            {
                admissionEntities ae = new admissionEntities();
                Student_Choice scup = ae.Student_Choice.Where(s => s.choice_id == choiceid && s.std_id == username && s.round_id == roundno).FirstOrDefault<Student_Choice>();

                old = (int)scup.preference_no;
                new1 = old - 1;
                if (old == 0)
                {

                }
                else
                {
                    Student_Choice scdn = ae.Student_Choice.Where(s => s.preference_no == new1 && s.std_id == username && s.round_id == roundno).FirstOrDefault<Student_Choice>();

                    scdn.preference_no = old;
                    scup.preference_no = new1;

                }

                ae.SaveChanges();
                Response.Redirect(Request.RawUrl);
            }
            catch (Exception err)
            {

            }


        }

        protected void downButton_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string CommandArgument = btn.CommandArgument;
            string username = (string)Session["username"];
            int choiceid = Int32.Parse(CommandArgument);
            int[] r = (int[])Application["round"];
            int course = (int)Session["course"];
            int roundno = r[course];
            int old, new1;
            try
            {
                admissionEntities ae = new admissionEntities();
                var x = from c in ae.Student_Choice where c.std_id == username select c.preference_no;
                int maxp = 0;
                foreach (var x1 in x)
                {
                    if (x1 > maxp)
                    {
                        maxp = (int)x1;
                    }
                }
                /*if (x == null)
                {
                    maxp = 0;
                }
                else
                {
                    maxp = (int)x.Max();
                }
                */

                Student_Choice scup = ae.Student_Choice.Where(s => s.choice_id == choiceid && s.std_id == username && s.round_id == roundno).FirstOrDefault<Student_Choice>();

                old = (int)scup.preference_no;
                new1 = old + 1;
                if (old == maxp)
                {

                }
                else
                {
                    Student_Choice scdn = ae.Student_Choice.Where(s => s.preference_no == new1 && s.std_id == username && s.round_id == roundno).FirstOrDefault<Student_Choice>();

                    scdn.preference_no = old;
                    scup.preference_no = new1;

                }

                ae.SaveChanges();
                Response.Redirect(Request.RawUrl);
            }
            catch (Exception err)
            {

            }


        }

        protected void branchDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["branchid"] = branchDropDownList.SelectedValue;
            Response.Redirect(Request.RawUrl);
        }

        protected void finishButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("lockChoices.aspx");
        }
    }
}