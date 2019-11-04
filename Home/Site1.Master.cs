using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;
namespace Eshop.frontend
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        handlerLayer handler = new handlerLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                login.InnerText = "(" + Session["userID"].ToString() + ")个人中心";
                login.HRef = "basicInfo.aspx";
                register.Visible = false;
                string userID = handler.getUserID(Session["userID"].ToString());
                cart.InnerText = string.Format("({0})购物车", handler.getCartNum(userID));
            }
            else
            {
                loginOut.Visible = false;
            }
        }

        protected void loginOut_Click(object sender, EventArgs e)
        {
            Session["userID"] = null;
            Response.Redirect("index.aspx");
        }
    }
}