using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

namespace eshop31
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnk_Exit_Click(object sender, EventArgs e)
        {
            Session["userid"] = null;
        }

        protected void lnk_reg_Click(object sender, EventArgs e)
        {
            Response.Redirect("reg31.aspx");
        }
    }
}