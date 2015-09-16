using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BusinessAccess
/// </summary>
public class BusinessAccess
{

    static dbDataContext dbhandller = new dbDataContext();
    static tblProduct product = new tblProduct();
    public class Product
    {
        public DataTable ReturnSt()
        {
            DataAccess.Product proobj = new DataAccess.Product();
            return proobj.retStatus();
        }
        public IList<tblProduct> RetSearch(string key)
        {
            DataAccess.Product proobj = new DataAccess.Product();
            return proobj.Search(key);
        }
        public string add(string pn, string url, string des, decimal p)
        {
            try
            {
                product = new tblProduct();
                product.price = p;
                product.proname = pn;
                product.descr = des;
                product.url_img = url;
                dbhandller.tblProducts.InsertOnSubmit(product);
                dbhandller.SubmitChanges();
                return "Save Record";
            }
            catch (Exception e)
            {
                return e.Message;
            }
        }
    }
    public class user
    {

        public DataTable ReturnSt()
        {
            DataAccess.user proobj = new DataAccess.user();
            return proobj.retStatus();
        }
    }
    public class admin
    {

        #region function admin

        public string LoginData(string a, string p)
        {
            DataAccess.admin admObj = new DataAccess.admin();
            admObj.aname = a;
            admObj.pass = p;
            string status = admObj.Login();
            return status;
        }

        #endregion
    }
}