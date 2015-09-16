using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] != null)
        {
            tdsearch.Visible = true;
            tdsin.Visible = false;
            tdlg.Visible = true;
            tdsup.Visible = false;
            tdProfile.Visible = true;
            welcome.InnerText = "Welcome " + Session["user"].ToString();
        }
        else
        {
            tdlg.Visible = false;
            tdsearch.Visible = false;
            tdsin.Visible = true;
            tdsup.Visible = true;
            tdProfile.Visible = false;
        }
    }
    protected void lnk_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}
