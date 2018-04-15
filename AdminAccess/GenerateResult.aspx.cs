using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.AdminAccess
{
    public partial class WebForm1 : System.Web.UI.Page
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

        protected void grButton_Click(object sender, EventArgs e)
        {

            int[] r = (int[])Application["round"];
            int programno = Int32.Parse(progDropDownList.SelectedValue);
            int roundno = r[programno - 1];
            try
            {
                admissionEntities ae = new admissionEntities();
                Round r1 = ae.Rounds.Where(s => s.round_id == roundno && s.program_id == programno).FirstOrDefault<Round>();
                if (r1 != null && r1.end_date != null)
                {
                    DateTime today = DateTime.Now;
                    int compare = DateTime.Compare((DateTime)r1.end_date, today);
                    if (compare >= 0)
                    {
                        string message = "Round Is Not Yet Completed";
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<script type = 'text/javascript'>");
                        sb.Append("window.onload=function(){");
                        sb.Append("alert('");
                        sb.Append(message);
                        sb.Append("')};");
                        sb.Append("</script>");
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                    }
                    else
                    {
                        string resultstatus = r1.result_generated;
                        if (resultstatus != null && resultstatus.Equals("yes"))
                        {
                            string message = "Result is alredy generated";
                            System.Text.StringBuilder sb = new System.Text.StringBuilder();
                            sb.Append("<script type = 'text/javascript'>");
                            sb.Append("window.onload=function(){");
                            sb.Append("alert('");
                            sb.Append(message);
                            sb.Append("')};");
                            sb.Append("</script>");
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                        }
                        else
                        {

                            var choicelist = from y in ae.Available_Choice where y.program_id == programno select y;
                            int size = choicelist.Count();
                            Dictionary<int, int> genlist = new Dictionary<int, int>(size);
                            Dictionary<int, int> obclist = new Dictionary<int, int>(size);
                            Dictionary<int, int> sclist = new Dictionary<int, int>(size);
                            Dictionary<int, int> stlist = new Dictionary<int, int>(size);
                            foreach (var cl in choicelist)
                            {
                                genlist.Add(cl.choice_id, (int)cl.gen);
                                obclist.Add(cl.choice_id, (int)cl.obc);
                                sclist.Add(cl.choice_id, (int)cl.sc);
                                stlist.Add(cl.choice_id, (int)cl.st);
                            }

                            var studentlist = from c in ae.StudentDetails where c.program == programno orderby c.rank select c;
                            foreach (var sl in studentlist)
                            {
                                string sid = sl.std_id;
                                var sc = from x in ae.Student_Choice where x.std_id == sid orderby x.preference_no select x;
                                var cat = from b in ae.StudentDetails
                                          where b.std_id == sid
                                          select b.std_category;
                                int category = 0;
                                foreach (var cat1 in cat)
                                {
                                    category = cat1.Value;
                                    break;
                                }
                                Boolean addflag = false;
                                Allotment al = ae.Allotments.Where(s => s.std_id == sid).FirstOrDefault<Allotment>();
                                if (al == null)
                                {
                                    al = new Allotment();
                                    addflag = true;
                                    al.std_id = sid;
                                }
                                Boolean okflag = false;
                                foreach (var sc1 in sc)
                                {
                                    int pref = (int)sc1.preference_no;
                                    int cid = sc1.choice_id;
                                    int noofseats;
                                    switch (category)
                                    {
                                        case 1:
                                            noofseats = genlist[cid];
                                            if (noofseats > 0)
                                            {
                                                genlist[cid]--;
                                                al.alloted_choice_id = cid;
                                                al.preference_no = pref;
                                                al.confirm_status = 0;
                                                al.round_no = roundno;
                                                if (addflag) { ae.Allotments.Add(al); }
                                                okflag = true;
                                            }
                                            break;
                                        case 2:
                                            noofseats = obclist[cid];
                                            if (noofseats > 0)
                                            {
                                                obclist[cid]--;
                                                al.alloted_choice_id = cid;
                                                al.preference_no = pref;
                                                al.confirm_status = 0;
                                                if (addflag) { ae.Allotments.Add(al); }
                                                okflag = true;
                                            }
                                            break;
                                        case 3:
                                            noofseats = sclist[cid];
                                            if (noofseats > 0)
                                            {
                                                sclist[cid]--;
                                                al.alloted_choice_id = cid;
                                                al.preference_no = pref;
                                                al.confirm_status = 0;
                                                if (addflag) { ae.Allotments.Add(al); }
                                                okflag = true;
                                            }
                                            break;
                                        case 4:
                                            noofseats = stlist[cid];
                                            if (noofseats > 0)
                                            {
                                                stlist[cid]--;
                                                al.alloted_choice_id = cid;
                                                al.preference_no = pref;
                                                al.confirm_status = 0;
                                                if (addflag) { ae.Allotments.Add(al); }
                                                okflag = true;
                                            }
                                            break;
                                        default:
                                            break;
                                    }
                                    if (okflag)
                                    {
                                        break;
                                    }
                                }
                            }

                        }
                    }

                }

                r1.result_generated = "yes";
                ae.SaveChanges();
            }
            catch (Exception err)
            {

            }
        }
    }
}