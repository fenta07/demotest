using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{
    static SqlCommand cmd = new SqlCommand();
    static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
    static SqlDataAdapter adt = new SqlDataAdapter();
    static DataTable dt = new DataTable();
    static DataSet ds = new DataSet();

    static dbDataContext dbhandller = new dbDataContext();
    static tblProduct product = new tblProduct();
    public class Product
    {
        public DataTable retStatus()
        {
            DataAccess.adt = new SqlDataAdapter("select * from tblProduct", con);
            DataAccess.dt = new DataTable();
            DataAccess.adt.Fill(DataAccess.dt);

            return DataAccess.dt;
        }
        public IList<tblProduct> Search(string keyword)
        {
            IList<tblProduct> list = (
                from a in dbhandller.tblProducts where a.descr.Contains(keyword) || a.proname.Contains(keyword) select a
                ).ToList();
            return list;
        }

    }
    public class user
    {
        public DataTable retStatus()
        {
            DataAccess.adt = new SqlDataAdapter("select * from tblUser", con);
            DataAccess.dt = new DataTable();
            DataAccess.adt.Fill(DataAccess.dt);

            return DataAccess.dt;
        }
    }
    public class admin
    {
        #region admintable Data
        private string emailid;

        public string eid
        {
            get { return emailid; }
            set { emailid = value; }
        }
        private string adminname;

        public string aname
        {
            get { return adminname; }
            set { adminname = value; }
        }
        private string password;

        public string pass
        {
            get { return password; }
            set { password = value; }
        }

        #endregion
        #region function admin

        public string Login()
        {
            try
            {
                DataAccess.adt = new SqlDataAdapter("select * from tblAdmin where adminname='" + adminname + "' and Password='" + pass + "'", con);
                DataAccess.dt = new DataTable();
                DataAccess.adt.Fill(DataAccess.dt);
                if (DataAccess.dt.Rows.Count == 1)
                {
                    return "Login";
                }

                return "Not";
            }
            catch (Exception e)
            {
                return e.Message;
            }
        }

        #endregion
    }
}