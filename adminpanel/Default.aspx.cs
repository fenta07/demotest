using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class adminpanel_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt=new DataTable();
        BusinessAccess.Product obj=new BusinessAccess.Product();
        dt=obj.ReturnSt();
        titem.InnerText = dt.Rows.Count.ToString();

        aitem.InnerText = dt.Rows.Count.ToString();

        BusinessAccess.user obju = new BusinessAccess.user();
        dt = obju.ReturnSt();
        tuser.InnerText = dt.Rows.Count.ToString();
        
    }
}