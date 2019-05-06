using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EUniv
{
    public partial class Student : System.Web.UI.Page
    {
        public void load_student(string username)
        {
            EUnivEntities db = new EUnivEntities();

            students.DataSource = (from student in db.students
                                       join us in db.users on student.user_name equals us.username
                                       join prog in db.programs on student.program_id equals prog.program_id
                                       where us.username == username
                                       select new
                                       {
                                           student.student_id,
                                           username = us.username,
                                           us.email,
                                           firstname = us.firstname,
                                           secondname = us.secondname,
                                           birthday = us.birthday,
                                           student.year_of_studing,
                                           degree = prog.program_degree,
                                           program=prog.program_name
                                       }).ToList();
            students.DataBind();

            var query3 = from tc in db.students
                         where tc.user_name == username
                         select tc;
            var tcr = query3.FirstOrDefault<student>();

            Stud = tcr;

        }
        student Stud;

        public void load_testatt()
        {
            EUnivEntities db = new EUnivEntities();

            testattgrid.DataSource = (from test_attemt in db.test_attemts
                                      join c in db.courses on test_attemt.course_id equals c.cousre_id 
                                      where test_attemt.student_id==Stud.student_id
                                      select new
                                      {
                                          test_attemt.test_attemt,
                                          test_attemt.test_date,
                                          test_attemt.test_name,
                                          test_attemt.test_type,
                                          test_attemt.mark,
                                          test_attemt.grade,
                                          c.course_name,
                                          c.course_type
                                      }).ToList();
            testattgrid.DataBind();
        }

        void load_courses()
        {
            EUnivEntities db = new EUnivEntities();

            DropDownList3.DataSource = (from c in db.courses
                                        where c.program_id==Stud.program_id
                                        select new
                                        {
                                            c.cousre_id,
                                            c.course_name
                                        }).ToList();
            DropDownList3.DataTextField = "course_name";
            DropDownList3.DataValueField = "cousre_id";
            DropDownList3.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            load_student(Login.username);
            load_testatt();
            if (!Page.IsPostBack)
            {
                load_courses();
            }
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            EUnivEntities db = new EUnivEntities();
            //Response.Redirect(DropDownList3.Text);
            test_attemts test = new test_attemts
            {
                test_date = DateTime.Now,
                test_name=DropDownList2.Text,
                test_type=DropDownList1.Text,
                course_id= int.Parse(DropDownList3.Text),
                student_id=Stud.student_id,
                grade="N/A",
                mark=0
            };
            db.test_attemts.Add(test);
            db.SaveChanges();
            Response.Redirect("/EUniv/EUniv/StuTest.aspx");
        }
    }
}