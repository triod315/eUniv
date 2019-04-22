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
        protected void Page_Load(object sender, EventArgs e)
        {
           
                //Label1.Text = Request.UrlReferrer.ToString();
                Label1.Text = ResolveUrl(@"http://localhost:8647/Admin.aspx");
            //Response.Redirect("~/Login.aspx");
            Label2.Text ="user: "+ Login.username;
        }
    }
}