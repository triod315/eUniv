using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EUniv
{
    public partial class Admin : System.Web.UI.Page
    {

        public void load_students()
        {
            EUnivEntities db = new EUnivEntities();

            students.DataSource = (from student in db.students select student).ToList();
            students.DataBind();
        }

        public void load_teachers()
        {
            EUnivEntities db = new EUnivEntities();

            teachersgrid.DataSource = (from teacher in db.teachers select teacher).ToList();
            teachersgrid.DataBind();
        }

        public void load_users()
        {
            EUnivEntities db = new EUnivEntities();

            usergrid.DataSource = (from user in db.users select user).ToList();
            usergrid.DataBind();
        }

        public void load_admins()
        {
            EUnivEntities db = new EUnivEntities();

            adminsgrid.DataSource = (from admin in db.admins select admin).ToList();
            adminsgrid.DataBind();
        }

        public void load_programs()
        {
            EUnivEntities db = new EUnivEntities();

            programsgid.DataSource = (from program in db.programs select program).ToList();
            programsgid.DataBind();
        }

        public void load_courses()
        {
            EUnivEntities db = new EUnivEntities();

            coursesgrid.DataSource = (from course in db.courses select course).ToList();
            coursesgrid.DataBind();
        }

        public void load_testatt()
        {
            EUnivEntities db = new EUnivEntities();

            testattgrid.DataSource = (from test_attemt in db.test_attemts select test_attemt).ToList();
            testattgrid.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Login.username==null)
            {
                Response.Redirect("/EUniv/EUniv/Login.aspx");
            }
            load_students();
            load_teachers();
            load_admins();
            load_users();
            load_testatt();
            load_courses();
            load_programs();
        }
    }
}