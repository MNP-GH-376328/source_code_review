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
    public partial class Loginmain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

[WebMethod(EnableSession=true)]
        public static string Confirm( string userid, string pwd)
        {
            DataSet ds;
            ServiceReference1.SourceCodeServiceClient obj = new ServiceReference1.SourceCodeServiceClient();
            try
            {
                // Call the service to get the DataSet
                ds = obj.SourceCodeSelect("onsubmit", userid, pwd, ""); // name(onsubmit, userid, pwd, "")

                // Check if the DataSet is not null and has rows
                if (ds != null && ds.Tables[0].Rows[0][0].ToString() == "1")
                {
                    //HttpContext.Current.Session["UserID"] = userid;
                  
                    // Assuming you want to return some confirmation message or user data
                    return "successfull"; // or return some specific data from the DataSet
                }
                else
                {
                    return "no data found.";
                }
            }
            catch (Exception ex)
            {
                // Log the exception (consider using a logging framework)
                return "An error occurred: " + ex.Message;
            }

        }

    }
}

