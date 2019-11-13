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
                login.InnerText = "(" +handler.getUserName(Session["userID"].ToString())  + ")个人中心";
                login.HRef = "basicInfo.aspx";
                register.Visible = false;
                cart.InnerText = string.Format("({0})购物车", handler.getCartNum(Session["userID"].ToString()));
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

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("commodityList.aspx?key=" + search_Input.Value);
        }
    }
}