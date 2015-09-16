using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        dbDataContext db = new dbDataContext();
        var data = from u in db.tblUsers where u.uname==txtuname.Text && u.password==txtpass1.Text select u;
        if (data.ToList().Count == 1)
        {
            Session["user"] = data.ToList()[0].pkeid;
            Response.Redirect("Default.aspx");
        }
    }
}