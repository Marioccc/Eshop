using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.Home
{
    public partial class cartList : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();

        private void cartInit()
        {
            cartLists.DataSource = handler.getCart("21");
            cartLists.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                cartInit(); 
            }
        }

        protected void removeItem_Command(object sender, CommandEventArgs e)
        {
            if (handler.removeCartItem(e.CommandArgument.ToString()))
            {
                cartInit();
                ClientScript.RegisterStartupScript(this.GetType(), "", "cartNumInit();", true);
            }
            else
            {
                Response.Write("<script>alert('删除失败！');</script>");
            }
        }

        protected void checkOut_Btn_Click(object sender, EventArgs e)
        {
            string nums = Request.Form["num"];
            string ids = Request.Form["check_item"];
            for (int i = 0; i < ids.Length; i++)
            {
                if (ids[i] == ',') continue;
                if (!handler.commitToCheckout(ids[i].ToString(), nums[i].ToString()))
                {
                    Response.Write("<script>alert('出现异常情况！');</script>");
                }
            }
            Response.Redirect("check_out.aspx");
        }
    }
}