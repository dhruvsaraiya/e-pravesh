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
    public partial class WebForm9 : System.Web.UI.Page
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
            DateTime dt = (DateTime)Application["lastdateofregistration"];
            int comparedates = DateTime.Compare(dt, DateTime.Now);
            if (comparedates >= 0)
            {
                Response.Redirect("Home.aspx?dt=1");
            }
            admissionEntities ae = new admissionEntities();
            var x = from y in ae.StudentDetails select y;
            foreach (var x1 in x)
            {
                if (x1.rank != null && x1.rank != 0)
                {
                    Response.Redirect("Home.aspx?dt=2");
                }
            }




            if (!IsPostBack)
            {
                Button1.Enabled = true;
                GridView1.Visible = false;
                Label1.Visible = false;
                Button1.Text = "Generate Rank";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*SqlConnection con = (SqlConnection)Application["connection"];
            SqlCommand cmd = (SqlCommand)Application["command"];
            string sql = "select * from Academic ";
            cmd.CommandText = sql;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
          //  Dictionary<float, int> rank = new Dictionary<float, int>;
            while(dr.Read())
            {
                
            }*/
            admissionEntities ae = new admissionEntities();
            var aca = from c in ae.Academics orderby (c.hsc_marks * 0.6 + c.competitive_exam_marks * 0.4) descending, c.ssc_marks descending select c;
            int rank = 0;
            foreach (var x in aca)
            {
                rank++;
                string stdid = x.std_id;
                StudentDetail s = ae.StudentDetails.Where(s1 => s1.std_id == stdid).FirstOrDefault<StudentDetail>();
                s.rank = rank;
            }
            ae.SaveChanges();
            /*Label1.Visible = true;
            Label1.Text = "Rank Successfully Generated";*/
            Button1.Enabled = false;
            Button1.Text = "Rank Successfully Generated";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}