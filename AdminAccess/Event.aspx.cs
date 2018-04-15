using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Pravesh.Admin
{
    public partial class WebForm8 : System.Web.UI.Page
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


            Label1.Visible = false;
            TextBox1.Visible = false;
            Button2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            TextBox1.Visible = true;
            Button2.Visible = true;
            Button1.Visible = false;
            Button2.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string ed = TextBox1.Text;

            SqlConnection con = (SqlConnection)Application["connection"];
            SqlCommand cmd = (SqlCommand)Application["command"];
            string sql = "insert into Event(event_details) values(@ED)";
            cmd.CommandText = sql;

            cmd.Parameters.AddWithValue("@ED", ed);
            con.Open();
            int n = cmd.ExecuteNonQuery();
            if (n == 1)
            {
                errorLabel.Text = "";
                Button1.Visible = true;
            }
            else
            {
                errorLabel.Text = "Some Error Occured";
            }
            con.Close();
        }
    }
}