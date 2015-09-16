using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpanel_Default2 : System.Web.UI.Page
{
    BusinessAccess.Product pro = new BusinessAccess.Product();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { fill(); }
    }
    public void fill()
    {
        gridProduct.DataSource = pro.ReturnSt();
        gridProduct.DataBind();
        for (int i = 0; i < gridProduct.Rows.Count; i++)
        {
            Label im = (Label)gridProduct.Rows[i].FindControl("Label2");
            Image img = (Image)gridProduct.Rows[i].FindControl("img");
            img.ImageUrl = "../images/" + im.Text;
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

        if (fupload.HasFile)
        {
            string fname = "product_" + new Random().Next(1, 999999).ToString() + ".jpg";
            string fpath = Server.MapPath("..\\images") + "\\";
            fpath += fname;
            fupload.SaveAs(fpath);
            pro.add(txtname.Text, fname, txtdesc.Text, decimal.Parse(txtprice.Text));
            fill
                ();
        }
    }
}