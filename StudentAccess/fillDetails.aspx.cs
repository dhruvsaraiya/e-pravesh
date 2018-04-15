using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.StudentAccess
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //VALIDATION AND VERIFICATION REMAINING
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
            string fnm = this.PreviousPage.AppRelativeVirtualPath;
            fnm = fnm.Substring(fnm.LastIndexOf("/") + 1);
            if (!fnm.Equals("feePayment.aspx"))
            {
                Response.Redirect("logout.aspx?nv=2");
            }
            if (categoryDropDownList.Items.Count == 0)
            {
                try
                {
                    categoryDropDownList.Items.Add(new ListItem("--SELECT--", "0"));
                    comExamNameDropDownList.Items.Add(new ListItem("--SELECT--", "0"));
                    admissionEntities ae = new admissionEntities();
                    var x = from a in ae.Categories orderby a.category_name select a;
                    foreach (var x1 in x)
                    {
                        categoryDropDownList.Items.Add(new ListItem(x1.category_name, x1.category_id.ToString()));
                    }
                    var y = from a in ae.Competitive_Exam orderby a.exam_name select a;
                    foreach (var x1 in y)
                    {
                        comExamNameDropDownList.Items.Add(new ListItem(x1.exam_name, x1.exam_id.ToString()));
                    }
                }
                catch (Exception err)
                {

                }
            }


            usernameLabel.Text = (string)Session["username"];
            pinLabel.Text = (string)Session["pin"];
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            string category = categoryDropDownList.SelectedValue;
            string comexamid = comExamNameDropDownList.SelectedValue;
            if (category.Equals("0") || !dateFlag)
            {
                errorLabel.Text = "Select Category and Birthdate";


            }
            else
            {
                if (comexamid.Equals("0"))
                {
                    errorLabel2.Text = "select competitive exam";

                }
                else
                {
                    string username = (String)Session["username"];
                    string std_name = nameTxt.Text;
                    string dob = DOBCalendar.SelectedDate.ToString();
                    DateTime dobdt = DOBCalendar.SelectedDate;
                    string contactno = contactnoTxt.Text;
                    string emailid = emailidTxt.Text;
                    string sscyear = SSCDropDownList.SelectedValue;
                    string sscschool = sscschoolTxt.Text;
                    string sscboard = SSCBoardDropDownList.SelectedValue;
                    string sscrollno = sscrollnoTxt.Text;
                    string sscpercentage = sscpercentageTxt.Text;
                    string hscyear = HSCDropDownList.SelectedValue;
                    string hscschool = hscschoolTxt.Text;
                    string hscboard = HSCBoardDropDownList.SelectedValue;
                    string hscrollno = hscrollnoTxt.Text;
                    string hscpercentile = hscpercentileTxt.Text;
                    string comexamyear = comExamYearDropDownList.SelectedValue;

                    string comexamrollno = comexamrollnoTxt.Text;
                    string comexampercentile = comexampercentileTxt.Text;

                    /*SqlConnection con = (SqlConnection)Application["connection"];
                    SqlCommand cmd = (SqlCommand)Application["command"];
                    string sql = "update StudentDetails set std_name=@N,std_category=@C,dob=@DOB,contact_no=@CONT,email_id=@EMAIL where std_id=@SID";

                    cmd.CommandText = sql;
                    cmd.Parameters.AddWithValue("@SID", username);
                    cmd.Parameters.AddWithValue("@N",std_name);
                    cmd.Parameters.AddWithValue("@C", category);
                    cmd.Parameters.AddWithValue("@DOB", dob);
                    cmd.Parameters.AddWithValue("@CONT", contactno);
                    cmd.Parameters.AddWithValue("@EMAIL", emailid);

                    int n = cmd.ExecuteNonQuery(); */
                    try
                    {
                        admissionEntities ae = new admissionEntities();
                        StudentDetail sd = ae.StudentDetails.Where(s => s.std_id == username).FirstOrDefault<StudentDetail>();
                        sd.std_name = std_name;
                        sd.std_category = Int32.Parse(category);
                        //sd.dob = DateTime.Parse(dob);
                        sd.dob = dobdt;
                        sd.contact_no = contactno;
                        sd.email_id = emailid;

                        int n = ae.SaveChanges();

                        if (n == 1)
                        {

                            if (Int32.Parse(hscyear) <= Int32.Parse(sscyear) || Int32.Parse(comexamyear) <= Int32.Parse(sscyear) || Int32.Parse(comexamyear) < Int32.Parse(hscyear))
                            {
                                errorLabel2.Text = "Years Are Not Valid!!!";
                            }
                            else
                            {
                                /* sql = "insert into Academic(std_id,ssc_year,ssc_school,ssc_board,ssc_rno,ssc_marks,hsc_year,hsc_school,hsc_board,hsc_rno,hsc_marks,competitive_exam_id,competitive_exam_year,competitive_exam_rno,competitive_exam_marks) Values(@SID,@SSCY,@SSCS,@SSCB,@SSCR,@SSCM,@HSCY,@HSCS,@HSCB,@HSCR,@HSCM,@CEID,@CEY,@CER,@CEM)";
                                 cmd.Parameters.Clear();
                                 cmd.CommandText = sql;
                                 cmd.Parameters.AddWithValue("@SID", username);
                                 cmd.Parameters.AddWithValue("@SSCY", sscyear);
                                 cmd.Parameters.AddWithValue("@SSCS", sscschool);
                                 cmd.Parameters.AddWithValue("@SSCB", sscboard);
                                 cmd.Parameters.AddWithValue("@SSCR", sscrollno);
                                 cmd.Parameters.AddWithValue("@SSCM", sscpercentage);
                                 cmd.Parameters.AddWithValue("@HSCY", hscyear);
                                 cmd.Parameters.AddWithValue("@HSCS", hscschool);
                                 cmd.Parameters.AddWithValue("@HSCB", hscboard);
                                 cmd.Parameters.AddWithValue("@HSCR", hscrollno);
                                 cmd.Parameters.AddWithValue("@HSCM", hscpercentile);
                                 cmd.Parameters.AddWithValue("@CEID", comexamid);
                                 cmd.Parameters.AddWithValue("@CEY", comexamyear);
                                 cmd.Parameters.AddWithValue("@CER", comexamrollno);
                                 cmd.Parameters.AddWithValue("@CEM", comexampercentile);

                                 n = cmd.ExecuteNonQuery();
                                 */
                                Academic a = new Academic();

                                a.std_id = username;
                                a.ssc_year = sscyear;
                                a.ssc_school = sscschool;
                                a.ssc_board = sscboard;
                                a.ssc_rno = sscrollno;
                                a.ssc_marks = Int32.Parse(sscpercentage);
                                a.hsc_year = hscyear;
                                a.hsc_school = hscschool;
                                a.hsc_board = hscboard;
                                a.hsc_rno = hscrollno;

                                a.hsc_marks = Int32.Parse(hscpercentile);
                                a.competitive_exam_id = Int32.Parse(comexamid);
                                a.competitive_exam_year = comexamyear;
                                a.competitive_exam_rno = comexamrollno;
                                a.competitive_exam_marks = Int32.Parse(comexampercentile);

                                ae.Academics.Add(a);
                                ae.SaveChanges();//both savechanges needed
                                int aid = a.academic_id;
                                StudentDetail sd2 = ae.StudentDetails.Where(s => s.std_id == username).FirstOrDefault<StudentDetail>();
                                sd2.academic_id = aid;


                                ae.SaveChanges();
                                if (n == 1)
                                {
                                    //details added successfully
                                    MailSender.sendMail(emailid, username, (string)Session["pin"]);
                                    Response.Redirect("home.aspx");
                                }
                                else
                                {
                                    errorLabel.Text = "Some Error In Adding Your Academic Details!!!";
                                }
                            }

                        }
                        else
                        {
                            errorLabel.Text = "Some Error In Adding Your Details!!!";
                        }
                    }
                    catch (Exception err)
                    {
                        errorLabel.Text = "Some Error In Adding Your Details!!! try again";
                    }
                }

            }

        }
        Boolean dateFlag = false;
        protected void DOBCalendar_SelectionChanged(object sender, EventArgs e)
        {
            dateFlag = true;
        }
    }
}