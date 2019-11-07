using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.Home
{
    public partial class commodityInfo : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Repeater1.DataSource = handler.getCommodity(Request.QueryString["id"].ToString());
                Repeater1.DataBind();
            }
        }

        protected void addToCart_Click(object sender, EventArgs e)
        {
            float per_Price = float.Parse( handler.getCommodityPrice(Request.QueryString["id"].ToString()) );
            float totalPrice = per_Price * int.Parse(nums.Text);
            if(handler.addToCart("21",Request.QueryString["id"],  nums.Text, totalPrice.ToString()) )
            {
                Response.Write("<script>alert('添加成功！');</script>");
            }
            else
            {
                Response.Write("<script>alert('添加失败！');</script>");
            }
            
        }

        protected void plus_Click(object sender, EventArgs e)
        {
            int num = int.Parse( nums.Text );
            nums.Text = (num + 1).ToString();
        }

        protected void minus_Click(object sender, EventArgs e)
        {
            int num = int.Parse(nums.Text);
            if(num>1)
            nums.Text = (num - 1).ToString();
        }
    }
}