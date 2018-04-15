using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.StudentAccess
{
    public partial class WebForm4 : System.Web.UI.Page
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
            string fnm = this.PreviousPage.AppRelativeVirtualPath;
            fnm = fnm.Substring(fnm.LastIndexOf("/") + 1);
            if (!fnm.Equals("register.aspx"))
            {
                Response.Redirect("logout.aspx?nv=2");
            }


            usernameLabel.Text = (string)Session["username"];
            errorLabel.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /* SqlConnection con = (SqlConnection)Application["connection"];
             SqlCommand cmd = (SqlCommand)Application["command"];
             string username = (string)Session["username"];
             string sql;
             int n;
             sql = "update StudentDetails set fees_paid=1 where std_id=@SIDNEW";
             cmd.CommandText = sql;
             cmd.Parameters.AddWithValue("@SIDNEW",username);
             n = cmd.ExecuteNonQuery(); */
            string username = (string)Session["username"];
            int course = (int)Session["course"];
            admissionEntities ae = new admissionEntities();
            StudentDetail sd1 = ae.StudentDetails.Where(s => s.std_id == username).FirstOrDefault<StudentDetail>();
            sd1.fees_paid = 1;
            /*  var s = from x in ae.StudentDetails where x.std_id == username select x;
              foreach (var std in s)
              {
                  std.fees_paid = 1;
              }
              */
            try
            {
                int count = ae.SaveChanges();

                if (count == 1)
                {
                    //PIN GENRATION
                    Boolean pinFlag = true;
                    while (pinFlag)
                    {
                        string pin = RandomGenerator.Generate(15);
                        /*cmd.Parameters.Clear();
                        sql = "select pin from StudentDetails where pin=@PIN";
                        cmd.CommandText = sql;
                        cmd.Parameters.AddWithValue("@PIN", pin);
                        SqlDataReader sdr = cmd.ExecuteReader(); */
                        var p = from x in ae.StudentDetails
                                where x.pin == pin
                                select x;
                        count = 0;
                        foreach (var p1 in p)
                        {
                            count++;
                        }
                        if (count == 0)
                        {

                            pinFlag = false;
                            /*cmd.Parameters.Clear();
                            sql = "update Student set pin=@PIN2 where std_id=@SID2";
                            cmd.CommandText = sql;
                            cmd.Parameters.AddWithValue("@PIN2", pin);
                            cmd.Parameters.AddWithValue("@SID2", username);
                            n = cmd.ExecuteNonQuery(); */
                            StudentDetail sd2 = ae.StudentDetails.Where(s => s.std_id == username).FirstOrDefault<StudentDetail>();
                            sd2.pin = pin;
                            sd2.program = course;

                            /*var sd = from x in ae.StudentDetails where x.std_id == username select x;
                            foreach (var std in sd)
                            {
                                std.pin = pin;
                            }*/
                            int n = ae.SaveChanges();
                            if (n == 1)
                            {
                                Session["pin"] = pin;
                                Response.Redirect("fillDetails.aspx");
                            }
                            else
                            {

                            }
                        }
                    }
                }
                else
                {
                    errorLabel.Text = "Error in Fees Payment!!!!";
                }

            }
            catch (Exception err)
            {
                errorLabel.Text = "Error in Fees Payment!!";
            }

        }
    }
}