using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.Home
{
    public partial class order : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();
        private void order_List_Init()
        {
            orderRepeater.DataSource = handler.getOrderData();
            orderRepeater.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                order_List_Init();
            }
        }

        protected void orderRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if(e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label order_id = e.Item.FindControl("orderID") as Label;
                Repeater rep = e.Item.FindControl("commodityRepeater") as Repeater;

                rep.DataSource = handler.getOrderDetailData(order_id.Text);
                rep.DataBind();
            }
        }

        protected void deleteItem_Command(object sender, CommandEventArgs e)
        {
            if (!handler.deleteOrder(e.CommandArgument.ToString()))
            {
                Response.Write("<script>alert('删除失败！');</script>");
            }
            order_List_Init();
        }

        protected void modifyInfo_Click(object sender, EventArgs e)
        {
            int level;
            if (goodEvaluation.Value == "1")
            {
                level = 3;
            }else if (mediumEvaluation.Value == "1")
            {
                level = 2;
            }
            else
            {
                level = 1;
            }
            //if(!handler.orderEvaluation(level,feeling.Value,))
        }
    }
}