using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Eshop.App_Code;

namespace Eshop.Home
{
    public partial class check_out : System.Web.UI.Page
    {
        private static  handlerLayer handler = new handlerLayer();

        private DataSet contactData = handler.getContactData("21");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                contactList.DataSource = contactData;
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

        protected void commit_Click(object sender, EventArgs e)
        {
            Order order = new Order();
            order.date  = DateTime.Now;
            order.memberID = "21";
            order.contactID = contactData.Tables[0].Rows[0][0].ToString();
            order.totalPrice = float.Parse(Total_price.Value);
            Random random = new Random();
            order.orderID = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString() + "21" + random.Next(0, 9);
            if (handler.commitOrder(order))
            {
                Response.Write("<script> alert('下单成功！');  location='index.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('出现异常！');</script>");
            }
        }
    }
}