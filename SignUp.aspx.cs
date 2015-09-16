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
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        dbDataContext db = new dbDataContext();
        tblUser user = new tblUser();

        user.password = txtpass1.Text;
        user.pkeid = txteid.Text;
        user.status = "unBlock";
        user.uname = txtuname.Text;

        db.tblUsers.InsertOnSubmit(user);
        db.SubmitChanges();
        Response.Redirect("SignIn.aspx");
    }
}