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
    public partial class SourceCodeTA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string UserName = Session["username"].ToString();
           
            
        }

        public class drpDtls
        {
            public string did { get; set; }
            public string dname { get; set; }
        }

        [WebMethod(EnableSession = true)]
        public static List<drpDtls> GetCrfList(string typ)
        {



            List<drpDtls> brdtls = new List<drpDtls>();
            DataSet ds = new DataSet();
            ServiceReference1.SourceCodeServiceClient obj = new ServiceReference1.SourceCodeServiceClient();
          
            
            ds = obj.SourceCodeSelect(typ, "", "", "");
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
        public static string Confirm(string typ, string val, string val1)
        {
            string result = "";
            DataSet ds;
            ServiceReference1.SourceCodeServiceClient obj = new ServiceReference1.SourceCodeServiceClient();
            ds = obj.SourceCodeSelect(typ, val,val1, "");
            try
            {


                if (ds.Tables[0].Rows.Count > 0)
                {
                    result = result + Convert.ToString(ds.Tables[0].Rows[0][0]);

                }
                else
                {
                    result = "not found";
                }

            }
            catch (Exception ex)
            {
            }
            return result;
        }


    }
}