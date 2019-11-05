using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace eshop31.myhome
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null || Session["userid"].ToString() == "")
            {
                Response.Redirect("../login31.aspx");
                Session["link"] = "myhome/myallorder31.aspx";
            }
        }

        protected void lnk_Exit_Click(object sender, EventArgs e)
        {
            Session["userid"] = null;
        }
    }
}