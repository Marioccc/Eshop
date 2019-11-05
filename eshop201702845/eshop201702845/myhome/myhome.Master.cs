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
using System.Xml.Linq;

namespace eshop201702845.myhome
{
    public partial class myhome : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null || Session["userid"].ToString() == "")
            {
                Response.Redirect("../login.aspx");
                Session["link"] = "myhome/myalloeder31.aspx";
            }
        }

        protected void lnk_Exit_Click(object sender, EventArgs e)
        {
            Session["userid"] = null;
        }
    }
}