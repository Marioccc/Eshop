using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;
using System.Web.UI.HtmlControls;

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
            bool flag = false;
            for (int i = 0; i < cartLists.Items.Count; i++)
            {
                RepeaterItem item = cartLists.Items[i];

                HtmlInputCheckBox checkboxItem = (HtmlInputCheckBox)item.Controls[1];
                if (checkboxItem.Checked)
                {
                    flag = true;
                    HtmlInputText numText = (HtmlInputText)item.Controls[5];
                    HtmlInputText totalPrice = (HtmlInputText)item.Controls[3];
                    if (!handler.commitToCheckout(checkboxItem.Value , numText.Value , totalPrice.Value))
                    {
                        Response.Write("<script>alert('出现异常情况！');</script>");
                    }
                }
            }
            if (flag)
            {
                Response.Redirect("check_out.aspx");
            }
            else
            {
                Response.Write("<script>alert('请选中需要结算的商品！');</script>");
            }
            
        }
    }
}