using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.Home
{
    public partial class check_out : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                contactList.DataSource = handler.getContactData("21");
                cartList.DataSource = handler.getPayCart("21");
                contactList.DataBind();
                cartList.DataBind();
            }
        }

        protected void backToCart_Click(object sender, EventArgs e)
        {
            if(handler.cartRoallBack("21"))
                Response.Redirect("cartList.aspx");
            else
                Response.Write("<script>alert('异常情况发生！');</script>");
        }
    }
}