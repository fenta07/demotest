using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    BusinessAccess.Product pro = new BusinessAccess.Product();
    protected void Page_Load(object sender, EventArgs e)
    {
        //fill();
    }

    private void fill()
    {
        gridSearch.DataSource = pro.RetSearch(txtsearch.Text);
        gridSearch.DataBind();
        for (int i = 0; i < gridSearch.Rows.Count; i++)
        {
            Label im = (Label)gridSearch.Rows[i].FindControl("Label2");
            Image img = (Image)gridSearch.Rows[i].FindControl("img");
            img.ImageUrl = "images/" + im.Text;
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        fill();
    }
}