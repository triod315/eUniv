using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace EUniv
{
    
    public partial class Login : System.Web.UI.Page
    {
        string DB = "Data Source=DESKTOP-5582JAK\\SQLEXPRESS;Initial Catalog=EUniv;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query1 = $"select passwd from users where username='{TextBox1.Text}'";

            using (SqlConnection conn = new SqlConnection(DB))
            {
                conn.Open();
                SqlCommand command = new SqlCommand(query1, conn);
                SqlDataReader R = command.ExecuteReader();
                R.Read();
                string password = R[0].ToString();
                conn.Close();
                if (password == TextBox2.Text) Response.Redirect("~/Admin.aspx");
            }
        }
    }
}