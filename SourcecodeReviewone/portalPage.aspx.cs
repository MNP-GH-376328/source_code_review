using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SourceCodeReview
{
    public partial class portalPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id =Convert.ToInt32( Session["userid"]);
            if (id == 417052)
            {
                string name = "PHILIP M SHAJAN";
                Label1.Text += name;
            }
            else if (id == 415891)
            {
                string name = "ARAVIND K S";
                Label1.Text += name;
            }
            else if (id == 376328)
            {
                string name = "MAHEESH M";
                Label1.Text += name;
            }
            else if(id== 415421)
            {
                string name = "SREETHU KRISHNAN M S";
                Label1.Text += name;
            }
            else if (id == 388539)
            {
                string name = "ROHIT P K";
                Label1.Text += name;
            }
            else if (id == 83652)
            {
                string name = "Nidheesh P P";
                Label1.Text += name;
            }
        }
    }
}