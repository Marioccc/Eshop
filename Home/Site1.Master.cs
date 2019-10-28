using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshop.frontend
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            if (Session["userID"] != null)
            {
                login.InnerText = "(" + Session["userID"].ToString() + ")个人中心";
                login.HRef = "userInfo.aspx";
                register.Visible = false;
            }
            else
            {
                loginOut.Visible = false;
            }
            */
        }

        protected void loginOut_Click(object sender, EventArgs e)
        {
            Session["userID"] = null;
            Response.Redirect("index.aspx");
        }
    }
}