using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SourcecodeReviewone
{
    public partial class Reviewpage : System.Web.UI.Page
    {
        public static string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            user = Session["UserID"].ToString();

        }
        public class drpDtls
        {
            public string did { get; set; }
            public string dname { get; set; }
        }

        [WebMethod(EnableSession = true)]
        public static List<drpDtls> GetCrfList1(string typ, string val)
        {



            List<drpDtls> brdtls = new List<drpDtls>();
            DataSet ds = new DataSet();
            ServiceReference1.SourceCodeServiceClient obj = new ServiceReference1.SourceCodeServiceClient();


            ds = obj.SourceCodeSelect(typ, user, "", "");
            if (ds.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    brdtls.Add(new drpDtls()
                    {
                        did = dr[0].ToString(),
                        dname = dr[1].ToString()
                    });
                }
            }
            return brdtls;
        }
      

        [WebMethod(EnableSession = true)]
        public static string  Review_Confirm(string typ, string val)
        {
         
            DataSet ds;
            ServiceReference1.SourceCodeServiceClient obj = new ServiceReference1.SourceCodeServiceClient();
            ds = obj.SourceCodeSelect(typ, val, "", "");
            return "msg";
           
        }
    }
}
