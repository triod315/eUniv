using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EUniv
{
    public partial class Teacher : System.Web.UI.Page
    {
        public void load_courses(int teacher_id)
        {
            EUnivEntities db = new EUnivEntities();

            coursesgrid.DataSource = (from course in db.courses
                                      join prog in db.programs on course.program_id equals prog.program_id
                                      where course.teacher_id==teacher_id
                                      select new
                                      {
                                          cours_id=course.cousre_id,
                                          name=course.course_name,
                                          type=course.course_type,
                                          prog_name=prog.program_name,
                                          degree=prog.program_degree,
                                          points=prog.credit_points
                                      }).ToList();
            coursesgrid.DataBind();
        }

        public void load_teacher(string username)
        {
            EUnivEntities db = new EUnivEntities();

            teachersgrid.DataSource = (from teacher in db.teachers
                                       join us in db.users on teacher.user_name equals us.username
                                       where us.username==username
                                       select new
                                       {
                                           teacher.teacher_id,
                                           username=us.username,
                                           us.email,
                                           firstname=us.firstname,
                                           secondname=us.secondname,
                                           birthday=us.birthday,
                                           chair=teacher.chair,
                                           degree=teacher.degree
                                       }).ToList();
            teachersgrid.DataBind();

            var query3 = from tc in db.teachers
                         where tc.user_name == username
                         select tc;
            var tcr = query3.FirstOrDefault<teacher>();

            Teach = tcr;

        }
        teacher Teach;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Login.username == null)
            {
                Response.Redirect("/EUniv/EUniv/Login.aspx");
            }
            if (!Page.IsPostBack)
            {
                load_programs();
            }
            
            load_teacher(Login.username);
            load_courses(Teach.teacher_id);
            load_testatt();
        }

        void load_programs()
        {
            EUnivEntities db = new EUnivEntities();

            DropDownList2.DataSource= (from program in db.programs
                                       select new
                                       {
                                           program.program_id,
                                           program.program_name
                                           
                                       }).ToList();
            DropDownList2.DataTextField = "program_name";
            DropDownList2.DataValueField = "program_id";
            DropDownList2.DataBind();
        }

        public void load_testatt()
        {
            EUnivEntities db = new EUnivEntities();

            testattgrid.BackColor = System.Drawing.Color.Yellow;

            

            testattgrid.DataSource = (from test_attemt in db.test_attemts
                                      join cours in db.courses on test_attemt.course_id equals cours.cousre_id
                                      join stud in db.students on test_attemt.student_id equals stud.student_id
                                      where (test_attemt.grade== "N/A" && cours.teacher_id==Teach.teacher_id)
                                      select new
                                      {
                                          test_attemt.test_attemt,
                                          test_attemt.test_date,
                                          test_attemt.test_name,
                                          test_attemt.test_type,
                                          
                                          cours.course_name,
                                          stud.user_name
                                      }).ToList();
            testattgrid.DataBind();
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            EUnivEntities db = new EUnivEntities();
            //int str = (from program in db.programs
            //           where program.program_name == DropDownList2.Text
            //           select program.program_id).ToList()[0];

            //Response.Redirect("1|" + DropDownList2.SelectedItem + "|2|" + DropDownList2.Text+"|3|"+ DropDownList2.SelectedValue);

            cours new_curse = new cours
            {
                course_name = TextBox1.Text,
                course_type=DropDownList1.Text,
                teacher_id=Teach.teacher_id,
                program_id=int.Parse(DropDownList2.SelectedValue)
            };

            db.courses.Add(new_curse);
            db.SaveChanges();
            Response.Redirect(Request.RawUrl);
        }
    }
}