using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace EUniv
{
    
    public partial class Login : System.Web.UI.Page
    {
        public static string username;
        string DB = "Data Source=DESKTOP-5582JAK\\SQLEXPRESS;Initial Catalog=EUniv;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query1 = $"select passwd from users where username='{TextBox1.Text}'";
            using (EUnivEntities db = new EUnivEntities())
            {
                var query = from us in db.users
                            where us.username == TextBox1.Text
                            select us;
                var user = query.FirstOrDefault<user>();
                Label errLabel = new Label();
                errLabel.CssClass = "errorl";
                if (user == null)
                {

                    errLabel.Text = "User not found";

                    this.Controls.Add(errLabel);
                }
                else
                if (user.passwd == TextBox2.Text)
                {
                    username = TextBox1.Text;
                    var query2 = from st in db.students
                                 where st.user_name == TextBox1.Text
                                 select st;
                    var student = query2.FirstOrDefault<student>();
                    if (student != null) Response.Redirect("~/Student.aspx");

                    var query3 = from tc in db.teachers
                                 where tc.user_name == TextBox1.Text
                                 select tc;
                    var tcr = query3.FirstOrDefault<teacher>();
                    if (tcr != null) Response.Redirect("~/Teacher.aspx");
                    Response.Redirect("~/Admin.aspx");
                }
                else
                {
                    errLabel.Text = "Wrong password";
                    this.Controls.Add(errLabel);
                }
            }
            
        }
    }
}