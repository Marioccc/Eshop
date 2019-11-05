using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop201702845
{
    public partial class Default31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "您是该网站的第<B>" + Application["count"].ToString() + "</B>位访问者！";
        }
    }
}