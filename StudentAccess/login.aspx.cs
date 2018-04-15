using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.StudentAccess
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

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
                string pin = pinTxt.Text;
                string captcha = captchaTxt.Text;
                if (captcha.ToLower() != Session["CaptchaVerify"].ToString())
                {
                    captchaLabel.Text = "Incorrect Captcha Code!!";
                    captchaLabel.ForeColor = System.Drawing.Color.Red;
                }
                /*SqlConnection con = (SqlConnection)Application["connection"];
               SqlCommand cmd = (SqlCommand)Application["command"];
               string sql = "select username from Login where username=@U and password=@P and role=@S";
               cmd.CommandText = sql;
               cmd.Parameters.AddWithValue("@U", username);
               cmd.Parameters.AddWithValue("@P", password);
               cmd.Parameters.AddWithValue("@S", "student"); 
               con.Open();
               SqlDataReader dr = cmd.ExecuteReader(); */
                //       try
                //     {
                admissionEntities ae = new admissionEntities();
                Login l = ae.Logins.Where(s => s.username == username && s.password == password && s.role.Equals("student")).FirstOrDefault<Login>();
                if (l == null)
                {
                    invalidLabel.Text = "Incorrect Username or Password";
                }
                else
                {
                    StudentDetail sd = ae.StudentDetails.Where(s => s.std_id == username && s.pin == pin && s.program == course).FirstOrDefault<StudentDetail>();
                    if (sd == null)
                    {
                        invalidLabel.Text = "Incorrect Pin!!";
                    }
                    else
                    {
                        Session["username"] = username;
                        Session["role"] = "student";
                        Session["pin"] = pin;
                        Session["program"] = course;
                        Session["course"] = course;
                        Response.Redirect("~/StudentAccess/home.aspx");
                    }
                }
                /*   }catch(Exception err)
                   {
                       invalidLabel.Text = "ERROR!!";
                   }*/
                /*
                if (dr.HasRows)
                {
                    dr.Read();
                    dr.Close();
                    cmd.Parameters.Clear();
                    sql = "select std_id,std_name from StudentDetails where username=@U1 and pin=@P1 and program=@PRG";
                    cmd.CommandText = sql;
                    cmd.Parameters.AddWithValue("@U1", username);
                    cmd.Parameters.AddWithValue("@P1", pin);
                    cmd.Parameters.AddWithValue("@PRG", course);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        Session["username"] = username;
                        Session["pin"] = pin;
                        Session["program"] = course;
                        Session["course"] = course;
                        HttpCookie c = new HttpCookie("username");
                        c["username"] = username;
                        c.Expires = DateTime.Now.AddMinutes(5);
                        Response.Cookies.Add(c);
                        Response.Redirect("~/StudentAccess/home.aspx");
                    }
                    else
                    {
                        invalidLabel.Text = "Incorrect Pin!!";
                    }
                }
                else
                {
                    invalidLabel.Text = "Incorrect Username or Password";
                } */
                //    con.Close();
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}