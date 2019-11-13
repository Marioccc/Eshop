using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Eshop.App_Code;

namespace Eshop.Home
{
    public partial class check_out : System.Web.UI.Page
    {
        private static  handlerLayer handler = new handlerLayer();

        private void contact_Init()
        {
            SqlDataReader result = handler.getContactData(Session["userID"].ToString());
            contactID.Text = result["ContactId"].ToString();
            address_name.InnerText = result["Addressee"].ToString();
            address_phone.InnerText = result["phone"].ToString();

            address_province.InnerText = result["province"].ToString();
            address_city.InnerText = result["city"].ToString();
            address_area.InnerText = result["area"].ToString();
            address_detail.InnerText = result["detailAddress"].ToString();

            address_zip.InnerText = result["zip"].ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                contact_Init();
                cartList.DataSource = handler.getPayCart(Session["userID"].ToString());
                cartList.DataBind();
            }
        }

        protected void backToCart_Click(object sender, EventArgs e)
        {
            if(handler.cartRoallBack(Session["userID"].ToString()))
                Response.Redirect("cartList.aspx");
            else
                Response.Write("<script>alert('异常情况发生！');</script>");
        }

        protected void commit_Click(object sender, EventArgs e)
        {
            Order order = new Order();
            order.date  = DateTime.Now;
            order.memberID = Session["userID"].ToString();
            order.contactID = contactID.Text;
            order.totalPrice = float.Parse(Total_price.Value);
            Random random = new Random();
            order.orderID = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString() + Session["userID"].ToString() + random.Next(0, 9);
            if (handler.commitOrder(order))
            {
                Response.Write("<script> alert('下单成功！');  location='index.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('出现异常！');</script>");
            }
        }

        protected void modify_Info_Click(object sender, EventArgs e)
        {
            Contact contact = new Contact();
            contact.name = name.Value;
            contact.memberID = Session["userID"].ToString();
            string address = province.Value + city.Value + district.Value;
            contact.province = province.Value;
            contact.city = city.Value;
            contact.area = district.Value;
            contact.detailAddress = addressDetail.Value;
            contact.address = address;
            contact.phone = phone.Value;
            contact.zip = zip.Value;

            if (!handler.updateDefaultAddress(contact, contactID.Text))
            {
                Response.Write("<script>alert('修改失败！');</script>");
            }
            else
            {
                Response.Redirect("check_out.aspx");
            }
        }
    }
}