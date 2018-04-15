using e_Pravesh.StudentAccess;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.Student
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            invalidLabel.Text = "";
            if (DropDownList1.Items.Count == 0)
            {
                try
                {
                    DropDownList1.Items.Add(new ListItem("--SELECT--", "0"));
                    admissionEntities ae = new admissionEntities();
                    var x = from a in ae.Programs orderby a.program_name select a;
                    foreach (var x1 in x)
                    {
                        DropDownList1.Items.Add(new ListItem(x1.program_name, x1.program_id.ToString()));
                    }
                }
                catch (Exception err)
                {

                }
            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int course = Int32.Parse(DropDownList1.SelectedValue);
            if (course == 0)
            {
                invalidLabel.Text = "Please Select Course!";
            }
            else
            {
                string username = usernameTxt.Text;
                string password = passwordTxt.Text;
                string cnfPassword = cnfPasswordTxt.Text;
                string captcha = captchaTxt.Text;
                if (!captcha.ToLower().Equals(Session["CaptchaVerify"].ToString()))
                {
                    captchaLabel.Text = "Incorrect Captcha Code!!";
                    captchaLabel.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    if (!password.Equals(cnfPassword))
                    {
                        invalidLabel.Text = "Both Passwords must match!!";
                    }
                    else
                    {
                        /*
                        SqlConnection con = (SqlConnection)Application["connection"];
                        SqlCommand cmd = (SqlCommand)Application["command"];
                        string sql = "select username from Login where username=@U";
                        cmd.CommandText = sql;
                        cmd.Parameters.AddWithValue("@U", username);
                        con.Open();
                        SqlDataReader dr = cmd.ExecuteReader();  */
                        admissionEntities ae = new admissionEntities();
                        var already = from x in ae.Logins
                                      where x.username == username
                                      select x;
                        int count = 0;
                        foreach (var a in already)
                        {
                            count++;
                        }


                        if (count > 0)
                        {
                            invalidLabel.Text = "You Have Already Registered, Please Login!!";
                        }
                        else
                        {
                            /*                      cmd.Parameters.Clear();
                                                    sql = "insert into Login values(@U1,@P1,@R)";
                                                    cmd.CommandText = sql;
                                                    cmd.Parameters.AddWithValue("@U1", username);
                                                    cmd.Parameters.AddWithValue("@P1", password);
                                                    cmd.Parameters.AddWithValue("@R", "student");
                                                    int n = cmd.ExecuteNonQuery();*/
                            Login l = new Login();
                            l.username = username;
                            l.password = password;
                            l.role = "student";
                            StudentDetail sd = new StudentDetail();
                            sd.std_id = username;
                            sd.username = username;

                            ae.Logins.Add(l);
                            ae.StudentDetails.Add(sd);


                            try
                            {
                                int n = ae.SaveChanges();
                                Session["username"] = username;
                                Session["role"] = "student";
                                Session["course"] = course;
                                Session["program"] = course;
                                Response.Redirect("feePayment.aspx");

                            }
                            catch (Exception err)
                            {
                                invalidLabel.Text = "Some Error Occured";
                            }




                            /*
                            if (n == 1)
                            {
                                cmd.Parameters.Clear();
                                sql = "insert into StudentDetails(std_id,username,registration_date,program) values(@SID,@U2,@RD,@PRG1)";
                                cmd.CommandText = sql;
                                cmd.Parameters.AddWithValue("@SID", username);
                                cmd.Parameters.AddWithValue("@U2", username);
                                cmd.Parameters.AddWithValue("@RD", System.DateTime.Today.ToString("d"));
                                cmd.Parameters.AddWithValue("@PRG1", course);
                                n = cmd.ExecuteNonQuery();
                                if (n == 1)
                                {
                                    Session["username"] = username;
                                    Session["program"] = course;
                                    //PIN GENERATION GOES HERE
                                    Response.Redirect("feePayment.aspx");
                                    //REDIRECT TO fillDetails.aspx PAGE WHERE GENERATED PIN IS DISPLAYED TO USER!!!
                                }
                                else
                                {
                                    invalidLabel.Text = "Some Error Occured ,Please Try Again!!";
                                }

                            }
                            else
                            {
                                invalidLabel.Text = "Some Error Occured ,Please Try Again!!";
                            }*/
                        }

                        //             con.Close();

                    }

                }
            }
        }
    }
}