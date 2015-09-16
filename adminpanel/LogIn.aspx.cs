using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpanel_LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        BusinessAccess.admin admobj = new BusinessAccess.admin();
        string status= admobj.LoginData(txtuname.Text, txtpass1.Text);
        if (status == "Login")
        {
            Session["log"] = "log";
            Response.Redirect("Default.aspx");
        }
        else
        {

            lblmsg.Text = status;
        }
            
        
    }
}